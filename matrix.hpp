/*
 * MIT License
 *
 * Copyright (c) 2026 Volovik Oleksandr
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

#pragma once

#include <algorithm>
#include <cassert>
#include <compare>
#include <concepts>
#include <initializer_list>
#include <iostream>
#include <iterator>
#include <ostream>
#include <type_traits>


template <typename T>
concept Numeric = std::is_arithmetic_v<T>;

/// @brief This Matrix is avaivaible for all numeric types.
/// It supports all basic math methods
/// It uses asserts for error handling
/// BE CAREFUL WITH RELEASE MODE, IT WILL NOT CHECK FOR ERRORS
/// This class also supports OpenMP for parallel processing
/// It uses cols, rows order, which is different from the usual rows, cols order
template <Numeric T>
class Matrix
{
 private:
  using value_type = T;
  using reference = T&;
  using const_reference = const T&;
  using pointer = T*;
  using const_pointer = const T*;
  using size_type = std::size_t;
  using iterator = pointer;
  using const_iterator = const_pointer;
  using reverse_iterator = std::reverse_iterator<iterator>;
  using const_reverse_iterator = std::reverse_iterator<const_iterator>;

 private:
  size_type cols_;
  size_type rows_;
  pointer data_;

  void allocator(long long c, long long r, const value_type& val)
  {
    if (c > 0 && r > 0)
    {
      data_ = new value_type[c * r];
      std::fill(data_, data_ + c * r, val);
      cols_ = c;
      rows_ = r;
    }
    else
    {
      data_ = nullptr;
      cols_ = 0;
      rows_ = 0;
    }
  }

 public:
  // @MATRIX CONSTRUCTORS SECTION
  explicit Matrix(long long cols = 0, long long rows = 0, value_type const& val = value_type{})
  {
    allocator(cols, rows, val);
  }

  Matrix(long long cols, long long rows, std::initializer_list<value_type> const& value_list)
      : Matrix{cols, rows}
  {
    size_type elements_count = std::min(value_list.size(), cols_ * rows_);
    std::copy(value_list.begin(), value_list.begin() + elements_count, data_);
  }

  ~Matrix() noexcept { delete[] data_; }

  Matrix(const Matrix& rhs) : cols_(rhs.cols_), rows_(rhs.rows_), data_(nullptr)
  {
    if (rhs.data_)
    {
      data_ = new value_type[cols_ * rows_];
      std::copy(rhs.data_, rhs.data_ + cols_ * rows_, data_);
    }
  }

  Matrix(Matrix&& rhs) noexcept : Matrix() { swap(*this, rhs); }

  Matrix& operator=(Matrix rhs) noexcept
  {
    swap(*this, rhs);
    return *this;
  }

  friend void swap(Matrix& first, Matrix& second) noexcept
  {
    using std::swap;
    swap(first.cols_, second.cols_);
    swap(first.rows_, second.rows_);
    swap(first.data_, second.data_);
  }

 public:
  // @MATRIX KINDS & HELPERS SECTION
  static Matrix Identity(size_type size)
  {
    Matrix identity(size, size);
    for (size_type i = 0; i < size; ++i)
    {
      identity.data_[i * size + i] = 1;
    }
    return identity;
  }

  Matrix& set_identity() &
  {
    assert(cols_ == rows_ && "Identity matrix should be square.");
    set_zero();
    for (size_type i = 0; i < cols_; ++i)
    {
      data_[i * cols_ + i] = 1;
    }
    return *this;
  }

  Matrix&& set_identity() &&
  {
    set_identity();
    return std::move(*this);
  }

  static Matrix Zero(size_type cols, size_type rows) { return Matrix(cols, rows, value_type{}); }

  Matrix& set_zero() &
  {
    std::fill(data_, data_ + cols_ * rows_, value_type{});
    return *this;
  }

  Matrix&& set_zero() &&
  {
    set_zero();
    return std::move(*this);
  }

  Matrix& resize(size_type cols, size_type rows)
  {
    if (cols == cols_ && rows == rows_)
    {
      return *this;
    }

    Matrix temp(cols, rows);

    size_type min_cols = std::min(cols_, cols);
    size_type min_rows = std::min(rows_, rows);

    for (size_type i = 0; i < min_rows; ++i)
    {
      std::copy(data_ + (i * cols_), data_ + (i * cols_) + min_cols, temp.data_ + (i * cols));
    }

    swap(*this, temp);
    return *this;
  }

 public:
  // @MATRIX INFO SECTION
  size_type ncols() const { return cols_; }
  size_type nrows() const { return rows_; }

 public:
  // @MATRIX COMPARISON SECTION
  bool equal(const Matrix& other) const noexcept
  {
    if (cols_ != other.cols_ || rows_ != other.rows_)
    {
      return false;
    }
    return std::equal(data_, data_ + cols_ * rows_, other.data_);
  }

  bool less(const Matrix& other) const noexcept
  {
    return (rows_ * cols_) < (other.rows_ * other.cols_);
  }

  void dump(std::ostream& os) const
  {
    os << "\n";
    for (size_type i = 0; i < rows_; ++i)
    {
      os << "[ ";
      for (size_type j = 0; j < cols_; ++j)
      {
        os << data_[i * cols_ + j] << " ";
      }
      os << "]\n";
    }
  }

 public:
  // @MATRIX MATH SECTION
  Matrix& add(const Matrix& other) &
  {
    assert(cols_ == other.cols_ && rows_ == other.rows_ &&
           "Matrix dimensions must match for addition");
    for (size_type i = 0; i < cols_ * rows_; ++i)
    {
      data_[i] += other.data_[i];
    }
    return *this;
  }

  Matrix&& add(const Matrix& other) &&
  {
    add(other);
    return std::move(*this);
  }

  Matrix& sub(const Matrix& other) &
  {
    assert(cols_ == other.cols_ && rows_ == other.rows_ &&
           "Matrix dimensions must match for subtraction");
    for (size_type i = 0; i < cols_ * rows_; ++i)
    {
      data_[i] -= other.data_[i];
    }
    return *this;
  }

  Matrix&& sub(const Matrix& other) &&
  {
    sub(other);
    return std::move(*this);
  }

  Matrix& multiply(const Matrix& other) &
  {
    assert(cols_ == other.rows_ && "Matrix dimensions must match for multiplication");

    Matrix result(other.cols_, rows_);

#pragma omp parallel for
    for (size_type i = 0; i < rows_; ++i)
    {
      for (size_type k = 0; k < cols_; ++k)
      {
        value_type temp = data_[i * cols_ + k];

        if (temp == 0) continue;

        for (size_type j = 0; j < other.cols_; ++j)
        {
          result(i, j) += temp * other(k, j);
        }
      }
    }
    swap(*this, result);
    return *this;
  }

  Matrix&& multiply(const Matrix& other) &&
  {
    multiply(other);
    return std::move(*this);
  }

  value_type det() const
  {
    assert(cols_ == rows_ && "Matrix must be square to calculate determinant");
    if (rows_ == 0)
    {
      return 0;
    }

    if (rows_ == 1)
    {
      return data_[0];
    }

    if (rows_ == 2)
    {
      return det2x2();
    }
    if (rows_ == 3)
    {
      return det3x3();
    }

    Matrix<value_type> temp(*this);
    value_type result = 1;
    size_type n = rows_;

    for (size_type i = 0; i < n; ++i)
    {
      size_type pivot = i;
      for (size_type j = i + 1; j < n; ++j)
      {
        if (std::abs(temp[j][i]) > std::abs(temp[pivot][i]))
        {
          pivot = j;
        }
      }

      if (pivot != i)
      {
        for (size_type k = i; k < n; ++k)
        {
          std::swap(temp[i][k], temp[pivot][k]);
        }
        result *= -1;
      }

      if (std::abs(temp[i][i]) < 1e-9)
      {
        return 0;
      }

      for (size_type j = i + 1; j < n; ++j)
      {
        value_type factor = temp[j][i] / temp[i][i];
        for (size_type k = i; k < n; ++k)
        {
          temp[j][k] -= factor * temp[i][k];
        }
      }

      result *= temp[i][i];
    }

    return result;
  }

  value_type determinant() const
  {
    return det();
  }

  Matrix& invert() &
  {
    assert(cols_ == rows_ && "Matrix must be square to be inverted");

    value_type d = det();
    if (std::abs(d) < 1e-9)
    {
      throw std::runtime_error("Matrix is singular and cannot be inverted");
    }

    if (rows_ == 1)
    {
      data_[0] = 1 / data_[0];
      return *this;
    }

    if (rows_ == 2)
    {
      invert2x2(d);
      return *this;
    }

    invert_gauss();

    return *this;
  }

  Matrix&& invert() &&
  {
    invert();
    return std::move(*this);
  }

  Matrix reverse() const
  {
    Matrix result(*this);
    result.invert();
    return result;
  }

 private:
  value_type det2x2() const
  {
    return data_[0] * data_[3] - data_[1] * data_[2];
  }

  value_type det3x3() const
  {
    return data_[0] * (data_[4] * data_[8] - data_[5] * data_[7]) -
           data_[1] * (data_[3] * data_[8] - data_[5] * data_[6]) +
           data_[2] * (data_[3] * data_[7] - data_[4] * data_[6]);
  }

  void invert2x2(value_type d)
  {
    value_type a = data_[0];
    value_type b = data_[1];
    value_type c = data_[2];
    value_type d_val = data_[3];

    data_[0] = d_val / d;
    data_[1] = -b / d;
    data_[2] = -c / d;
    data_[3] = a / d;
  }

  void invert_gauss()
  {
    size_type n = rows_;
    Matrix<double> aug(2 * n, n);

    for (size_type i = 0; i < n; ++i)
    {
      for (size_type j = 0; j < n; ++j)
      {
        aug(i, j) = static_cast<double>((*this)(i, j));
      }
      aug(i, i + n) = 1.0;
    }

    for (size_type i = 0; i < n; ++i)
    {
      size_type pivot = i;
      for (size_type j = i + 1; j < n; ++j)
      {
        if (std::abs(aug(j, i)) > std::abs(aug(pivot, i)))
        {
          pivot = j;
        }
      }

      if (pivot != i)
      {
        for (size_type k = 0; k < 2 * n; ++k)
        {
          std::swap(aug(i, k), aug(pivot, k));
        }
      }

      double div = aug(i, i);
      for (size_type j = i; j < 2 * n; ++j)
      {
        aug(i, j) /= div;
      }

      for (size_type j = 0; j < n; ++j)
      {
        if (i != j)
        {
          double factor = aug(j, i);
          for (size_type k = i; k < 2 * n; ++k)
          {
            aug(j, k) -= factor * aug(i, k);
          }
        }
      }
    }

    for (size_type i = 0; i < n; ++i)
    {
      for (size_type j = 0; j < n; ++j)
      {
        (*this)(i, j) = static_cast<value_type>(aug(i, j + n));
      }
    }
  }

 public:
  Matrix transposed() const
  {
    Matrix result(rows_, cols_);

    for (size_type i = 0; i < rows_; ++i)
    {
      for (size_type j = 0; j < cols_; ++j)
      {
        result[j][i] = (*this)[i][j];
      }
    }
    return result;
  }

  Matrix& transpose() &
  {
    Matrix temp = static_cast<const Matrix&>(*this).transposed();
    swap(*this, temp);
    return *this;
  }

  Matrix&& transpose() &&
  {
    this->transpose();
    return std::move(*this);
  }

  bool is_orthogonal() const
  {
    if (rows_ != cols_)
    {
      return false;
    }
    Matrix temp = this->transposed();
    Matrix diff = (*this) * temp - Matrix::Identity(cols_);
    for (auto val : diff)
    {
      if (std::abs(val) > 1e-6) return false;
    }
    return true;
  }

  bool is_diagonal() const
  {
    for (size_type i = 0; i < rows_; ++i)
    {
      for (size_type j = 0; j < cols_; ++j)
      {
        if (i != j && std::abs((*this)[i][j]) > 1e-6)
        {
          return false;
        }
      }
    }
    return true;
  }

  bool is_symmetric() const
  {
    if (rows_ != cols_)
    {
      return false;
    }
    Matrix temp = this->transposed();
    Matrix diff = (*this) - temp;
    for (auto val : diff)
    {
      if (std::abs(val) > 1e-6) return false;
    }
    return true;
  }

  value_type trace() const
  {
    value_type sum = 0;
    for (size_type i = 0; i < rows_; ++i)
    {
      sum += (*this)[i][i];
    }
    return sum;
  }

 public:
  // @MATRIX OPERATORS SECTION
  Matrix& operator+=(const Matrix& rhs) & { return add(rhs); }

  friend Matrix operator+(Matrix lhs, const Matrix& rhs)
  {
    lhs += rhs;
    return lhs;
  }

  Matrix& operator+=(const value_type& scalar) &
  {
    for (size_type i = 0; i < rows_ * cols_; ++i)
    {
      data_[i] += scalar;
    }
    return *this;
  }

  friend Matrix operator+(Matrix lhs, const value_type& scalar)
  {
    lhs += scalar;
    return lhs;
  }

  friend Matrix operator+(const value_type& scalar, Matrix rhs)
  {
    rhs += scalar;
    return rhs;
  }

  Matrix& operator-=(const Matrix& rhs) & { return sub(rhs); }

  Matrix& operator-=(const value_type& scalar) &
  {
    for (size_type i = 0; i < rows_ * cols_; ++i)
    {
      data_[i] -= scalar;
    }
    return *this;
  }

  friend Matrix operator-(Matrix lhs, const Matrix& rhs)
  {
    lhs -= rhs;
    return lhs;
  }

  friend Matrix operator-(Matrix lhs, const value_type& scalar)
  {
    lhs -= scalar;
    return lhs;
  }

  friend Matrix operator-(const value_type& scalar, Matrix rhs)
  {
    for (size_type i = 0; i < rhs.rows_ * rhs.cols_; ++i)
    {
      rhs.data_[i] = scalar - rhs.data_[i];
    }
    return rhs;
  }

  Matrix& operator*=(const Matrix& rhs) & 
  {
    return multiply(rhs);
  }

  Matrix& operator*=(const value_type& scalar) &
  {
    for (size_type i = 0; i < rows_ * cols_; ++i)
    {
      data_[i] *= scalar;
    }
    return *this;
  }

  friend Matrix operator*(Matrix lhs, const Matrix& rhs)
  {
    lhs *= rhs;
    return lhs;
  }

  friend Matrix operator*(Matrix lhs, const value_type& scalar)
  {
    lhs *= scalar;
    return lhs;
  }

  friend Matrix operator*(const value_type& scalar, Matrix rhs)
  {
    rhs *= scalar;
    return rhs;
  }

  Matrix& operator/=(const Matrix& rhs) & { return multiply(rhs.reverse()); }

  friend Matrix operator/(Matrix lhs, const Matrix& rhs)
  {
    lhs /= rhs;
    return lhs;
  }

  friend Matrix operator/(Matrix lhs, const value_type& scalar)
  {
    for (size_type i = 0; i < lhs.rows_ * lhs.cols_; ++i)
    {
      lhs.data_[i] /= scalar;
    }
    return lhs;
  }

  reference operator()(size_type row, size_type col)
  {
    assert(col < cols_ && row < rows_ && "Matrix index out of bounds");
    return data_[row * cols_ + col];
  }

  const_reference operator()(size_type row, size_type col) const
  {
    assert(col < cols_ && row < rows_ && "Matrix index out of bounds");
    return data_[row * cols_ + col];
  }

  bool operator==(const Matrix& rhs) const
  {
    if (rows_ != rhs.rows_ || cols_ != rhs.cols_)
    {
      return false;
    }
    if constexpr (std::is_floating_point_v<value_type>)
    {
      return std::equal(begin(), end(), rhs.begin(),
                        [](value_type a, value_type b) { return std::abs(a - b) < 1e-6; });
    }
    else
    {
      return std::equal(begin(), end(), rhs.begin());
    }
  }

  auto operator<=>(const Matrix& rhs) const
  {
    return std::lexicographical_compare_three_way(begin(), end(), rhs.begin(), rhs.end());
  }

  value_type max_element() const
  {
    return *std::max_element(begin(), end());
  }

  value_type min_element() const
  {
    return *std::min_element(begin(), end());
  }

  friend std::ostream& operator<<(std::ostream& os, const Matrix& matrix)
  {
    matrix.dump(os);
    return os;
  }

 public:
  // @MATRIX PROXIES FOR [] OPERATOR
  struct RowProxy
  {
    pointer row_ptr;
    size_type limit;

    reference operator[](size_type i)
    {
      assert(i < limit && "Row index out of bounds");
      return row_ptr[i];
    }
  };

  RowProxy operator[](size_type j)
  {
    assert(j < rows_ && "Row index out of bounds");
    return {data_ + (j * cols_), cols_};
  }

  struct ConstRowProxy
  {
    const_pointer row_ptr;
    size_type limit;

    const_reference operator[](size_type i) const
    {
      assert(i < limit && "Row index out of bounds");
      return row_ptr[i];
    }
  };

  ConstRowProxy operator[](size_type j) const
  {
    assert(j < rows_ && "Row index out of bounds");
    return {data_ + (j * cols_), cols_};
  }

 public:
  // @MATRIX ITERATORS SECTION

  iterator begin() noexcept
  {
    return data_;
  }

  const_iterator begin() const noexcept
  {
    return data_;
  }

  iterator end() noexcept
  {
    return data_ + (rows_ * cols_);
  }

  const_iterator end() const noexcept
  {
    return data_ + (rows_ * cols_);
  }

  const_iterator cbegin() const noexcept
  {
    return data_;
  }

  const_iterator cend() const noexcept
  {
    return data_ + (rows_ * cols_);
  }

  reverse_iterator rbegin() noexcept
  {
    return reverse_iterator(end());
  }

  reverse_iterator rend() noexcept
  {
    return reverse_iterator(begin());
  }

  const_reverse_iterator crbegin() const noexcept
  {
    return const_reverse_iterator(cend());
  }

  const_reverse_iterator crend() const noexcept
  {
    return const_reverse_iterator(cbegin());
  }
};
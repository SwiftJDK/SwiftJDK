// import sun.misc
// import java.util

internal /* __abstract */ class AbstractStringBuilder : Appendable, CharSequence {
	// *
	//      * The value is used for character storage.
	//      
	// 
    internal var value: [AnsiChar]
	// *
	//      * The count is the number of characters used.
	//      
	// 
	internal var count: Int32 = 0
	// *
	//      * The maximum size of array to allocate (unless necessary).
	//      * Some VMs reserve some header words in an array.
	//      * Attempts to allocate larger arrays may result in
	//      * OutOfMemoryError: Requested array size exceeds VM limit
	//      
	// 
	private let MAX_ARRAY_SIZE: Int32 = Integer.MAX_VALUE - 8

	// *
	//      * This no-arg constructor is necessary for serialization of subclasses.
	internal init() {
	}

	// *
	//      * Creates an AbstractStringBuilder of the specified capacity.
	internal init(_ capacity: Int32) {
		value = AnsiChar[](count: capacity)
	}

	// *
	//      * Returns the length (character count).
	//      *
	//      * @return  the length of the sequence of characters currently
	//      *          represented by this object
	// @Override
	public func length() -> Int32 {
		return count
	}

	// *
	//      * Returns the current capacity. The capacity is the amount of storage
	//      * available for newly inserted characters, beyond which an allocation
	//      * will occur.
	//      *
	//      * @return  the current capacity
	open func capacity() -> Int32 {
		return value.length
	}

	// *
	//      * Ensures that the capacity is at least equal to the specified minimum.
	//      * If the current capacity is less than the argument, then a new internal
	//      * array is allocated with greater capacity. The new capacity is the
	//      * larger of:
	//      * <ul>
	//      * <li>The {@code minimumCapacity} argument.
	//      * <li>Twice the old capacity, plus {@code 2}.
	//      * </ul>
	//      * If the {@code minimumCapacity} argument is nonpositive, this
	//      * method takes no action and simply returns.
	//      * Note that subsequent operations on this object can reduce the
	//      * actual capacity below that requested here.
	//      *
	//      * @param   minimumCapacity   the minimum desired capacity.
	open func ensureCapacity(_ minimumCapacity: Int32) {
		if minimumCapacity > 0 {
			ensureCapacityInternal(minimumCapacity)
		}
	}

	// *
	//      * For positive values of {@code minimumCapacity}, this method
	//      * behaves like {@code ensureCapacity}, however it is never
	//      * synchronized.
	//      * If {@code minimumCapacity} is non positive due to numeric
	//      * overflow, this method throws {@code OutOfMemoryError}.
	private func ensureCapacityInternal(_ minimumCapacity: Int32) {
		//  overflow-conscious code
		if (minimumCapacity - value.length) > 0 {
			value = Arrays.copyOf(value, newCapacity(minimumCapacity))
		}
	}

	// *
	//      * Returns a capacity at least as large as the given minimum capacity.
	//      * Returns the current capacity increased by the same amount + 2 if
	//      * that suffices.
	//      * Will not return a capacity greater than {@code MAX_ARRAY_SIZE}
	//      * unless the given minimum capacity is greater than that.
	//      *
	//      * @param  minCapacity the desired minimum capacity
	//      * @throws OutOfMemoryError if minCapacity is less than zero or
	//      *         greater than Integer.MAX_VALUE
	private func newCapacity(_ minCapacity: Int32) -> Int32 {
		//  overflow-conscious code
		var newCapacity: Int32 = (value.length << 1) + 2
		if (newCapacity - minCapacity) < 0 {
			newCapacity = minCapacity
		}
		return ((newCapacity <= 0) | ((MAX_ARRAY_SIZE - newCapacity) < 0) ? hugeCapacity(minCapacity) : newCapacity)
	}

	private func hugeCapacity(_ minCapacity: Int32) -> Int32 {
		if (Integer.MAX_VALUE - minCapacity) < 0 {
			//  overflow
			throw OutOfMemoryError()
		}
		return (minCapacity > MAX_ARRAY_SIZE ? minCapacity : MAX_ARRAY_SIZE)
	}

	// *
	//      * Attempts to reduce storage used for the character sequence.
	//      * If the buffer is larger than necessary to hold its current sequence of
	//      * characters, then it may be resized to become more space efficient.
	//      * Calling this method may, but is not required to, affect the value
	//      * returned by a subsequent call to the {@link #capacity()} method.
	open func trimToSize() {
		if count < value.length {
			value = Arrays.copyOf(value, count)
		}
	}

	// *
	//      * Sets the length of the character sequence.
	//      * The sequence is changed to a new character sequence
	//      * whose length is specified by the argument. For every nonnegative
	//      * index <i>k</i> less than {@code newLength}, the character at
	//      * index <i>k</i> in the new character sequence is the same as the
	//      * character at index <i>k</i> in the old sequence if <i>k</i> is less
	//      * than the length of the old character sequence; otherwise, it is the
	//      * null character {@code '\u005Cu0000'}.
	//      *
	//      * In other words, if the {@code newLength} argument is less than
	//      * the current length, the length is changed to the specified length.
	//      * <p>
	//      * If the {@code newLength} argument is greater than or equal
	//      * to the current length, sufficient null characters
	//      * ({@code '\u005Cu0000'}) are appended so that
	//      * length becomes the {@code newLength} argument.
	//      * <p>
	//      * The {@code newLength} argument must be greater than or equal
	//      * to {@code 0}.
	//      *
	//      * @param      newLength   the new length
	//      * @throws     IndexOutOfBoundsException  if the
	//      *               {@code newLength} argument is negative.
	open func setLength(_ newLength: Int32) {
		if newLength < 0 {
			throw StringIndexOutOfBoundsException(newLength)
		}
		ensureCapacityInternal(newLength)
		if count < newLength {
			Arrays.fill(value, count, newLength, "\0")
		}
		count = newLength
	}

	// *
	//      * Returns the {@code char} value in this sequence at the specified index.
	//      * The first {@code char} value is at index {@code 0}, the next at index
	//      * {@code 1}, and so on, as in array indexing.
	//      * <p>
	//      * The index argument must be greater than or equal to
	//      * {@code 0}, and less than the length of this sequence.
	//      *
	//      * <p>If the {@code char} value specified by the index is a
	//      * <a href="Character.html#unicode">surrogate</a>, the surrogate
	//      * value is returned.
	//      *
	//      * @param      index   the index of the desired {@code char} value.
	//      * @return     the {@code char} value at the specified index.
	//      * @throws     IndexOutOfBoundsException  if {@code index} is
	//      *             negative or greater than or equal to {@code length()}.
	// @Override
	public func charAt(_ index: Int32) -> AnsiChar {
		if (index < 0) | (index >= count) {
			throw StringIndexOutOfBoundsException(index)
		}
		return value[index]
	}

	// *
	//      * Returns the character (Unicode code point) at the specified
	//      * index. The index refers to {@code char} values
	//      * (Unicode code units) and ranges from {@code 0} to
	//      * {@link #length()}{@code  - 1}.
	//      *
	//      * <p> If the {@code char} value specified at the given index
	//      * is in the high-surrogate range, the following index is less
	//      * than the length of this sequence, and the
	//      * {@code char} value at the following index is in the
	//      * low-surrogate range, then the supplementary code point
	//      * corresponding to this surrogate pair is returned. Otherwise,
	//      * the {@code char} value at the given index is returned.
	//      *
	//      * @param      index the index to the {@code char} values
	//      * @return     the code point value of the character at the
	//      *             {@code index}
	//      * @exception  IndexOutOfBoundsException  if the {@code index}
	//      *             argument is negative or not less than the length of this
	//      *             sequence.
	open func codePointAt(_ index: Int32) -> Int32 {
		if (index < 0) | (index >= count) {
			throw StringIndexOutOfBoundsException(index)
		}
		return Character.codePointAtImpl(value, index, count)
	}

	// *
	//      * Returns the character (Unicode code point) before the specified
	//      * index. The index refers to {@code char} values
	//      * (Unicode code units) and ranges from {@code 1} to {@link
	//      * #length()}.
	//      *
	//      * <p> If the {@code char} value at {@code (index - 1)}
	//      * is in the low-surrogate range, {@code (index - 2)} is not
	//      * negative, and the {@code char} value at {@code (index -
	//      * 2)} is in the high-surrogate range, then the
	//      * supplementary code point value of the surrogate pair is
	//      * returned. If the {@code char} value at {@code index -
	//      * 1} is an unpaired low-surrogate or a high-surrogate, the
	//      * surrogate value is returned.
	//      *
	//      * @param     index the index following the code point that should be returned
	//      * @return    the Unicode code point value before the given index.
	//      * @exception IndexOutOfBoundsException if the {@code index}
	//      *            argument is less than 1 or greater than the length
	//      *            of this sequence.
	open func codePointBefore(_ index: Int32) -> Int32 {
		var i: Int32 = index - 1
		if (i < 0) | (i >= count) {
			throw StringIndexOutOfBoundsException(index)
		}
		return Character.codePointBeforeImpl(value, index, 0)
	}

	// *
	//      * Returns the number of Unicode code points in the specified text
	//      * range of this sequence. The text range begins at the specified
	//      * {@code beginIndex} and extends to the {@code char} at
	//      * index {@code endIndex - 1}. Thus the length (in
	//      * {@code char}s) of the text range is
	//      * {@code endIndex-beginIndex}. Unpaired surrogates within
	//      * this sequence count as one code point each.
	//      *
	//      * @param beginIndex the index to the first {@code char} of
	//      * the text range.
	//      * @param endIndex the index after the last {@code char} of
	//      * the text range.
	//      * @return the number of Unicode code points in the specified text
	//      * range
	//      * @exception IndexOutOfBoundsException if the
	//      * {@code beginIndex} is negative, or {@code endIndex}
	//      * is larger than the length of this sequence, or
	//      * {@code beginIndex} is larger than {@code endIndex}.
	open func codePointCount(_ beginIndex: Int32, _ endIndex: Int32) -> Int32 {
		if (beginIndex < 0) | (endIndex > count) | (beginIndex > endIndex) {
			throw IndexOutOfBoundsException()
		}
		return Character.codePointCountImpl(value, beginIndex, endIndex - beginIndex)
	}

	// *
	//      * Returns the index within this sequence that is offset from the
	//      * given {@code index} by {@code codePointOffset} code
	//      * points. Unpaired surrogates within the text range given by
	//      * {@code index} and {@code codePointOffset} count as
	//      * one code point each.
	//      *
	//      * @param index the index to be offset
	//      * @param codePointOffset the offset in code points
	//      * @return the index within this sequence
	//      * @exception IndexOutOfBoundsException if {@code index}
	//      *   is negative or larger then the length of this sequence,
	//      *   or if {@code codePointOffset} is positive and the subsequence
	//      *   starting with {@code index} has fewer than
	//      *   {@code codePointOffset} code points,
	//      *   or if {@code codePointOffset} is negative and the subsequence
	//      *   before {@code index} has fewer than the absolute value of
	//      *   {@code codePointOffset} code points.
	open func offsetByCodePoints(_ index: Int32, _ codePointOffset: Int32) -> Int32 {
		if (index < 0) | (index > count) {
			throw IndexOutOfBoundsException()
		}
		return Character.offsetByCodePointsImpl(value, 0, count, index, codePointOffset)
	}

	// *
	//      * Characters are copied from this sequence into the
	//      * destination character array {@code dst}. The first character to
	//      * be copied is at index {@code srcBegin}; the last character to
	//      * be copied is at index {@code srcEnd-1}. The total number of
	//      * characters to be copied is {@code srcEnd-srcBegin}. The
	//      * characters are copied into the subarray of {@code dst} starting
	//      * at index {@code dstBegin} and ending at index:
	//      * <pre>{@code
	//      * dstbegin + (srcEnd-srcBegin) - 1
	//      * }</pre>
	//      *
	//      * @param      srcBegin   start copying at this offset.
	//      * @param      srcEnd     stop copying at this offset.
	//      * @param      dst        the array to copy the data into.
	//      * @param      dstBegin   offset into {@code dst}.
	//      * @throws     IndexOutOfBoundsException  if any of the following is true:
	//      *             <ul>
	//      *             <li>{@code srcBegin} is negative
	//      *             <li>{@code dstBegin} is negative
	//      *             <li>the {@code srcBegin} argument is greater than
	//      *             the {@code srcEnd} argument.
	//      *             <li>{@code srcEnd} is greater than
	//      *             {@code this.length()}.
	//      *             <li>{@code dstBegin+srcEnd-srcBegin} is greater than
	//      *             {@code dst.length}
	//      *             </ul>
    open func getChars(_ srcBegin: Int32, _ srcEnd: Int32, _ dst: [AnsiChar], _ dstBegin: Int32) {
		if srcBegin < 0 {
			throw StringIndexOutOfBoundsException(srcBegin)
		}
		if (srcEnd < 0) | (srcEnd > count) {
			throw StringIndexOutOfBoundsException(srcEnd)
		}
		if srcBegin > srcEnd {
			throw StringIndexOutOfBoundsException("srcBegin > srcEnd")
		}
		System.arraycopy(value, srcBegin, dst, dstBegin, srcEnd - srcBegin)
	}

	// *
	//      * The character at the specified index is set to {@code ch}. This
	//      * sequence is altered to represent a new character sequence that is
	//      * identical to the old character sequence, except that it contains the
	//      * character {@code ch} at position {@code index}.
	//      * <p>
	//      * The index argument must be greater than or equal to
	//      * {@code 0}, and less than the length of this sequence.
	//      *
	//      * @param      index   the index of the character to modify.
	//      * @param      ch      the new character.
	//      * @throws     IndexOutOfBoundsException  if {@code index} is
	//      *             negative or greater than or equal to {@code length()}.
	open func setCharAt(_ index: Int32, _ ch: AnsiChar) {
		if (index < 0) | (index >= count) {
			throw StringIndexOutOfBoundsException(index)
		}
		value[index] = ch
	}

	// *
	//      * Appends the string representation of the {@code Object} argument.
	//      * <p>
	//      * The overall effect is exactly as if the argument were converted
	//      * to a string by the method {@link String#valueOf(Object)},
	//      * and the characters of that string were then
	//      * {@link #append(String) appended} to this character sequence.
	//      *
	//      * @param   obj   an {@code Object}.
	//      * @return  a reference to this object.
	open func append(_ obj: Object!) -> AbstractStringBuilder! {
		return append(String.valueOf(obj))
	}

	// *
	//      * Appends the specified string to this character sequence.
	//      * <p>
	//      * The characters of the {@code String} argument are appended, in
	//      * order, increasing the length of this sequence by the length of the
	//      * argument. If {@code str} is {@code null}, then the four
	//      * characters {@code "null"} are appended.
	//      * <p>
	//      * Let <i>n</i> be the length of this character sequence just prior to
	//      * execution of the {@code append} method. Then the character at
	//      * index <i>k</i> in the new character sequence is equal to the character
	//      * at index <i>k</i> in the old character sequence, if <i>k</i> is less
	//      * than <i>n</i>; otherwise, it is equal to the character at index
	//      * <i>k-n</i> in the argument {@code str}.
	//      *
	//      * @param   str   a string.
	//      * @return  a reference to this object.
	open func append(_ str: String!) -> AbstractStringBuilder! {
		if str == nil {
			return appendNull()
		}
		var len: Int32 = str.length()
		ensureCapacityInternal(count + len)
		str.getChars(0, len, value, count)
		count = count + len
		return self
	}

	// Documentation in subclasses because of synchro difference
	open func append(_ sb: StringBuffer!) -> AbstractStringBuilder! {
		if sb == nil {
			return appendNull()
		}
		var len: Int32 = sb.length()
		ensureCapacityInternal(count + len)
		sb.getChars(0, len, value, count)
		count = count + len
		return self
	}

	// *
	//      * @since 1.8
	internal func append(_ asb: AbstractStringBuilder!) -> AbstractStringBuilder! {
		if asb == nil {
			return appendNull()
		}
		var len: Int32 = asb.length()
		ensureCapacityInternal(count + len)
		asb.getChars(0, len, value, count)
		count = count + len
		return self
	}

	// Documentation in subclasses because of synchro difference
	// @Override
	public func append(_ s: CharSequence!) -> AbstractStringBuilder! {
		if s == nil {
			return appendNull()
		}
		if s is String! {
			return self.append((s as? String))
		}
		if s is AbstractStringBuilder! {
			return self.append((s as? AbstractStringBuilder))
		}
		return self.append(s, 0, s.length())
	}

	private func appendNull() -> AbstractStringBuilder! {
		var c: Int32 = count
		ensureCapacityInternal(c + 4)
        var value: [AnsiChar] = self.value
		value[c] = "n"
		inc(c)
		value[c] = "u"
		inc(c)
		value[c] = "l"
		inc(c)
		value[c] = "l"
		inc(c)
		count = c
		return self
	}

	// *
	//      * Appends a subsequence of the specified {@code CharSequence} to this
	//      * sequence.
	//      * <p>
	//      * Characters of the argument {@code s}, starting at
	//      * index {@code start}, are appended, in order, to the contents of
	//      * this sequence up to the (exclusive) index {@code end}. The length
	//      * of this sequence is increased by the value of {@code end - start}.
	//      * <p>
	//      * Let <i>n</i> be the length of this character sequence just prior to
	//      * execution of the {@code append} method. Then the character at
	//      * index <i>k</i> in this character sequence becomes equal to the
	//      * character at index <i>k</i> in this sequence, if <i>k</i> is less than
	//      * <i>n</i>; otherwise, it is equal to the character at index
	//      * <i>k+start-n</i> in the argument {@code s}.
	//      * <p>
	//      * If {@code s} is {@code null}, then this method appends
	//      * characters as if the s parameter was a sequence containing the four
	//      * characters {@code "null"}.
	//      *
	//      * @param   s the sequence to append.
	//      * @param   start   the starting index of the subsequence to be appended.
	//      * @param   end     the end index of the subsequence to be appended.
	//      * @return  a reference to this object.
	//      * @throws     IndexOutOfBoundsException if
	//      *             {@code start} is negative, or
	//      *             {@code start} is greater than {@code end} or
	//      *             {@code end} is greater than {@code s.length()}
	// @Override
	public func append(_ s: CharSequence!, _ start: Int32, _ end: Int32) -> AbstractStringBuilder! {
		if s == nil {
			s = "null"
		}
		if (start < 0) | (start > end) | (end > s.length()) {
			throw IndexOutOfBoundsException("start " + start + ", end " + end + ", s.length() " + s.length())
		}
		var len: Int32 = end - start
		ensureCapacityInternal(count + len)
		for i in start ... end - 1 {
			value[j] = s.charAt(i)
		}
		count = count + len
		return self
	}

	// *
	//      * Appends the string representation of the {@code char} array
	//      * argument to this sequence.
	//      * <p>
	//      * The characters of the array argument are appended, in order, to
	//      * the contents of this sequence. The length of this sequence
	//      * increases by the length of the argument.
	//      * <p>
	//      * The overall effect is exactly as if the argument were converted
	//      * to a string by the method {@link String#valueOf(char[])},
	//      * and the characters of that string were then
	//      * {@link #append(String) appended} to this character sequence.
	//      *
	//      * @param   str   the characters to be appended.
	//      * @return  a reference to this object.
    open func append(_ str: [AnsiChar]) -> AbstractStringBuilder! {
		var len: Int32 = str.length
		ensureCapacityInternal(count + len)
		System.arraycopy(str, 0, value, count, len)
		count = count + len
		return self
	}

	// *
	//      * Appends the string representation of a subarray of the
	//      * {@code char} array argument to this sequence.
	//      * <p>
	//      * Characters of the {@code char} array {@code str}, starting at
	//      * index {@code offset}, are appended, in order, to the contents
	//      * of this sequence. The length of this sequence increases
	//      * by the value of {@code len}.
	//      * <p>
	//      * The overall effect is exactly as if the arguments were converted
	//      * to a string by the method {@link String#valueOf(char[],int,int)},
	//      * and the characters of that string were then
	//      * {@link #append(String) appended} to this character sequence.
	//      *
	//      * @param   str      the characters to be appended.
	//      * @param   offset   the index of the first {@code char} to append.
	//      * @param   len      the number of {@code char}s to append.
	//      * @return  a reference to this object.
	//      * @throws IndexOutOfBoundsException
	//      *         if {@code offset < 0} or {@code len < 0}
	//      *         or {@code offset+len > str.length}
    open func append(_ str: [AnsiChar], _ offset: Int32, _ len: Int32) -> AbstractStringBuilder! {
		if len > 0 {
			ensureCapacityInternal(count + len)
		}
		System.arraycopy(str, offset, value, count, len)
		count = count + len
		return self
	}

	// *
	//      * Appends the string representation of the {@code boolean}
	//      * argument to the sequence.
	//      * <p>
	//      * The overall effect is exactly as if the argument were converted
	//      * to a string by the method {@link String#valueOf(boolean)},
	//      * and the characters of that string were then
	//      * {@link #append(String) appended} to this character sequence.
	//      *
	//      * @param   b   a {@code boolean}.
	//      * @return  a reference to this object.
	open func append(_ b: Bool) -> AbstractStringBuilder! {
		if b {
			ensureCapacityInternal(count + 4)
			value[count] = "t"
			inc(count)
			value[count] = "r"
			inc(count)
			value[count] = "u"
			inc(count)
			value[count] = "e"
			inc(count)
		} else {
			ensureCapacityInternal(count + 5)
			value[count] = "f"
			inc(count)
			value[count] = "a"
			inc(count)
			value[count] = "l"
			inc(count)
			value[count] = "s"
			inc(count)
			value[count] = "e"
			inc(count)
		}
		return self
	}

	// *
	//      * Appends the string representation of the {@code char}
	//      * argument to this sequence.
	//      * <p>
	//      * The argument is appended to the contents of this sequence.
	//      * The length of this sequence increases by {@code 1}.
	//      * <p>
	//      * The overall effect is exactly as if the argument were converted
	//      * to a string by the method {@link String#valueOf(char)},
	//      * and the character in that string were then
	//      * {@link #append(String) appended} to this character sequence.
	//      *
	//      * @param   c   a {@code char}.
	//      * @return  a reference to this object.
	// @Override
	public func append(_ c: AnsiChar) -> AbstractStringBuilder! {
		ensureCapacityInternal(count + 1)
		value[count] = c
		inc(count)
		return self
	}

	// *
	//      * Appends the string representation of the {@code int}
	//      * argument to this sequence.
	//      * <p>
	//      * The overall effect is exactly as if the argument were converted
	//      * to a string by the method {@link String#valueOf(int)},
	//      * and the characters of that string were then
	//      * {@link #append(String) appended} to this character sequence.
	//      *
	//      * @param   i   an {@code int}.
	//      * @return  a reference to this object.
	open func append(_ i: Int32) -> AbstractStringBuilder! {
		if i == Integer.MIN_VALUE {
			append("-2147483648")
			return self
		}
		var appendedLength: Int32 = (i < 0 ? Integer.stringSize(-i) + 1 : Integer.stringSize(i))
		var spaceNeeded: Int32 = count + appendedLength
		ensureCapacityInternal(spaceNeeded)
		Integer.getChars(i, spaceNeeded, value)
		count = spaceNeeded
		return self
	}

	// *
	//      * Appends the string representation of the {@code long}
	//      * argument to this sequence.
	//      * <p>
	//      * The overall effect is exactly as if the argument were converted
	//      * to a string by the method {@link String#valueOf(long)},
	//      * and the characters of that string were then
	//      * {@link #append(String) appended} to this character sequence.
	//      *
	//      * @param   l   a {@code long}.
	//      * @return  a reference to this object.
	open func append(_ l: Int64) -> AbstractStringBuilder! {
		if l == Long.MIN_VALUE {
			append("-9223372036854775808")
			return self
		}
		var appendedLength: Int32 = (l < 0 ? Long.stringSize(-l) + 1 : Long.stringSize(l))
		var spaceNeeded: Int32 = count + appendedLength
		ensureCapacityInternal(spaceNeeded)
		Long.getChars(l, spaceNeeded, value)
		count = spaceNeeded
		return self
	}

	// *
	//      * Appends the string representation of the {@code float}
	//      * argument to this sequence.
	//      * <p>
	//      * The overall effect is exactly as if the argument were converted
	//      * to a string by the method {@link String#valueOf(float)},
	//      * and the characters of that string were then
	//      * {@link #append(String) appended} to this character sequence.
	//      *
	//      * @param   f   a {@code float}.
	//      * @return  a reference to this object.
	open func append(_ f: Float32) -> AbstractStringBuilder! {
		FloatingDecimal.appendTo(f, self)
		return self
	}

	// *
	//      * Appends the string representation of the {@code double}
	//      * argument to this sequence.
	//      * <p>
	//      * The overall effect is exactly as if the argument were converted
	//      * to a string by the method {@link String#valueOf(double)},
	//      * and the characters of that string were then
	//      * {@link #append(String) appended} to this character sequence.
	//      *
	//      * @param   d   a {@code double}.
	//      * @return  a reference to this object.
	open func append(_ d: Float64) -> AbstractStringBuilder! {
		FloatingDecimal.appendTo(d, self)
		return self
	}

	// *
	//      * Removes the characters in a substring of this sequence.
	//      * The substring begins at the specified {@code start} and extends to
	//      * the character at index {@code end - 1} or to the end of the
	//      * sequence if no such character exists. If
	//      * {@code start} is equal to {@code end}, no changes are made.
	//      *
	//      * @param      start  The beginning index, inclusive.
	//      * @param      end    The ending index, exclusive.
	//      * @return     This object.
	//      * @throws     StringIndexOutOfBoundsException  if {@code start}
	//      *             is negative, greater than {@code length()}, or
	//      *             greater than {@code end}.
	open func delete(_ start: Int32, _ end: Int32) -> AbstractStringBuilder! {
		if start < 0 {
			throw StringIndexOutOfBoundsException(start)
		}
		if end > count {
			end = count
		}
		if start > end {
			throw StringIndexOutOfBoundsException()
		}
		var len: Int32 = end - start
		if len > 0 {
			System.arraycopy(value, start + len, value, start, count - end)
			count = count - len
		}
		return self
	}

	// *
	//      * Appends the string representation of the {@code codePoint}
	//      * argument to this sequence.
	//      *
	//      * <p> The argument is appended to the contents of this sequence.
	//      * The length of this sequence increases by
	//      * {@link Character#charCount(int) Character.charCount(codePoint)}.
	//      *
	//      * <p> The overall effect is exactly as if the argument were
	//      * converted to a {@code char} array by the method
	//      * {@link Character#toChars(int)} and the character in that array
	//      * were then {@link #append(char[]) appended} to this character
	//      * sequence.
	//      *
	//      * @param   codePoint   a Unicode code point
	//      * @return  a reference to this object.
	//      * @exception IllegalArgumentException if the specified
	//      * {@code codePoint} isn't a valid Unicode code point
	open func appendCodePoint(_ codePoint: Int32) -> AbstractStringBuilder! {
		var count: Int32 = self.count
		if Character.isBmpCodePoint(codePoint) {
			ensureCapacityInternal(count + 1)
			value[count] = (codePoint as? AnsiChar)
			self.count = count + 1
		} else {
			if Character.isValidCodePoint(codePoint) {
				ensureCapacityInternal(count + 2)
				Character.toSurrogates(codePoint, value, count)
				self.count = count + 2
			} else {
				throw IllegalArgumentException()
			}
		}
		return self
	}

	// *
	//      * Removes the {@code char} at the specified position in this
	//      * sequence. This sequence is shortened by one {@code char}.
	//      *
	//      * <p>Note: If the character at the given index is a supplementary
	//      * character, this method does not remove the entire character. If
	//      * correct handling of supplementary characters is required,
	//      * determine the number of {@code char}s to remove by calling
	//      * {@code Character.charCount(thisSequence.codePointAt(index))},
	//      * where {@code thisSequence} is this sequence.
	//      *
	//      * @param       index  Index of {@code char} to remove
	//      * @return      This object.
	//      * @throws      StringIndexOutOfBoundsException  if the {@code index}
	//      *              is negative or greater than or equal to
	//      *              {@code length()}.
	open func deleteCharAt(_ index: Int32) -> AbstractStringBuilder! {
		if (index < 0) | (index >= count) {
			throw StringIndexOutOfBoundsException(index)
		}
		System.arraycopy(value, index + 1, value, index, count - index - 1)
		dec(count)
		return self
	}

	// *
	//      * Replaces the characters in a substring of this sequence
	//      * with characters in the specified {@code String}. The substring
	//      * begins at the specified {@code start} and extends to the character
	//      * at index {@code end - 1} or to the end of the
	//      * sequence if no such character exists. First the
	//      * characters in the substring are removed and then the specified
	//      * {@code String} is inserted at {@code start}. (This
	//      * sequence will be lengthened to accommodate the
	//      * specified String if necessary.)
	//      *
	//      * @param      start    The beginning index, inclusive.
	//      * @param      end      The ending index, exclusive.
	//      * @param      str   String that will replace previous contents.
	//      * @return     This object.
	//      * @throws     StringIndexOutOfBoundsException  if {@code start}
	//      *             is negative, greater than {@code length()}, or
	//      *             greater than {@code end}.
	open func replace(_ start: Int32, _ end: Int32, _ str: String!) -> AbstractStringBuilder! {
		if start < 0 {
			throw StringIndexOutOfBoundsException(start)
		}
		if start > count {
			throw StringIndexOutOfBoundsException("start > length()")
		}
		if start > end {
			throw StringIndexOutOfBoundsException("start > end")
		}
		if end > count {
			end = count
		}
		var len: Int32 = str.length()
		var newCount: Int32 = (count + len) - end - start
		ensureCapacityInternal(newCount)
		System.arraycopy(value, end, value, start + len, count - end)
		str.getChars(value, start)
		count = newCount
		return self
	}

	// *
	//      * Returns a new {@code String} that contains a subsequence of
	//      * characters currently contained in this character sequence. The
	//      * substring begins at the specified index and extends to the end of
	//      * this sequence.
	//      *
	//      * @param      start    The beginning index, inclusive.
	//      * @return     The new string.
	//      * @throws     StringIndexOutOfBoundsException  if {@code start} is
	//      *             less than zero, or greater than the length of this object.
	open func substring(_ start: Int32) -> String! {
		return substring(start, count)
	}

	// *
	//      * Returns a new character sequence that is a subsequence of this sequence.
	//      *
	//      * <p> An invocation of this method of the form
	//      *
	//      * <pre>{@code
	//      * sb.subSequence(begin,&nbsp;end)}</pre>
	//      *
	//      * behaves in exactly the same way as the invocation
	//      *
	//      * <pre>{@code
	//      * sb.substring(begin,&nbsp;end)}</pre>
	//      *
	//      * This method is provided so that this class can
	//      * implement the {@link CharSequence} interface.
	//      *
	//      * @param      start   the start index, inclusive.
	//      * @param      end     the end index, exclusive.
	//      * @return     the specified subsequence.
	//      *
	//      * @throws  IndexOutOfBoundsException
	//      *          if {@code start} or {@code end} are negative,
	//      *          if {@code end} is greater than {@code length()},
	//      *          or if {@code start} is greater than {@code end}
	//      * @spec JSR-51
	// @Override
	public func subSequence(_ start: Int32, _ end: Int32) -> CharSequence! {
		return substring(start, end)
	}

	// *
	//      * Returns a new {@code String} that contains a subsequence of
	//      * characters currently contained in this sequence. The
	//      * substring begins at the specified {@code start} and
	//      * extends to the character at index {@code end - 1}.
	//      *
	//      * @param      start    The beginning index, inclusive.
	//      * @param      end      The ending index, exclusive.
	//      * @return     The new string.
	//      * @throws     StringIndexOutOfBoundsException  if {@code start}
	//      *             or {@code end} are negative or greater than
	//      *             {@code length()}, or {@code start} is
	//      *             greater than {@code end}.
	open func substring(_ start: Int32, _ end: Int32) -> String! {
		if start < 0 {
			throw StringIndexOutOfBoundsException(start)
		}
		if end > count {
			throw StringIndexOutOfBoundsException(end)
		}
		if start > end {
			throw StringIndexOutOfBoundsException(end - start)
		}
		return String(value, start, end - start)
	}

	// *
	//      * Inserts the string representation of a subarray of the {@code str}
	//      * array argument into this sequence. The subarray begins at the
	//      * specified {@code offset} and extends {@code len} {@code char}s.
	//      * The characters of the subarray are inserted into this sequence at
	//      * the position indicated by {@code index}. The length of this
	//      * sequence increases by {@code len} {@code char}s.
	//      *
	//      * @param      index    position at which to insert subarray.
	//      * @param      str       A {@code char} array.
	//      * @param      offset   the index of the first {@code char} in subarray to
	//      *             be inserted.
	//      * @param      len      the number of {@code char}s in the subarray to
	//      *             be inserted.
	//      * @return     This object
	//      * @throws     StringIndexOutOfBoundsException  if {@code index}
	//      *             is negative or greater than {@code length()}, or
	//      *             {@code offset} or {@code len} are negative, or
	//      *             {@code (offset+len)} is greater than
	//      *             {@code str.length}.
    open func insert(_ index: Int32, _ str: [AnsiChar], _ offset: Int32, _ len: Int32) -> AbstractStringBuilder! {
		if (index < 0) | (index > length()) {
			throw StringIndexOutOfBoundsException(index)
		}
		if (offset < 0) | (len < 0) | (offset > (str.length - len)) {
			throw StringIndexOutOfBoundsException("offset " + offset + ", len " + len + ", str.length " + str.length)
		}
		ensureCapacityInternal(count + len)
		System.arraycopy(value, index, value, index + len, count - index)
		System.arraycopy(str, offset, value, index, len)
		count = count + len
		return self
	}

	// *
	//      * Inserts the string representation of the {@code Object}
	//      * argument into this character sequence.
	//      * <p>
	//      * The overall effect is exactly as if the second argument were
	//      * converted to a string by the method {@link String#valueOf(Object)},
	//      * and the characters of that string were then
	//      * {@link #insert(int,String) inserted} into this character
	//      * sequence at the indicated offset.
	//      * <p>
	//      * The {@code offset} argument must be greater than or equal to
	//      * {@code 0}, and less than or equal to the {@linkplain #length() length}
	//      * of this sequence.
	//      *
	//      * @param      offset   the offset.
	//      * @param      obj      an {@code Object}.
	//      * @return     a reference to this object.
	//      * @throws     StringIndexOutOfBoundsException  if the offset is invalid.
	open func insert(_ offset: Int32, _ obj: Object!) -> AbstractStringBuilder! {
		return insert(offset, String.valueOf(obj))
	}

	// *
	//      * Inserts the string into this character sequence.
	//      * <p>
	//      * The characters of the {@code String} argument are inserted, in
	//      * order, into this sequence at the indicated offset, moving up any
	//      * characters originally above that position and increasing the length
	//      * of this sequence by the length of the argument. If
	//      * {@code str} is {@code null}, then the four characters
	//      * {@code "null"} are inserted into this sequence.
	//      * <p>
	//      * The character at index <i>k</i> in the new character sequence is
	//      * equal to:
	//      * <ul>
	//      * <li>the character at index <i>k</i> in the old character sequence, if
	//      * <i>k</i> is less than {@code offset}
	//      * <li>the character at index <i>k</i>{@code -offset} in the
	//      * argument {@code str}, if <i>k</i> is not less than
	//      * {@code offset} but is less than {@code offset+str.length()}
	//      * <li>the character at index <i>k</i>{@code -str.length()} in the
	//      * old character sequence, if <i>k</i> is not less than
	//      * {@code offset+str.length()}
	//      * </ul><p>
	//      * The {@code offset} argument must be greater than or equal to
	//      * {@code 0}, and less than or equal to the {@linkplain #length() length}
	//      * of this sequence.
	//      *
	//      * @param      offset   the offset.
	//      * @param      str      a string.
	//      * @return     a reference to this object.
	//      * @throws     StringIndexOutOfBoundsException  if the offset is invalid.
	open func insert(_ offset: Int32, _ str: String!) -> AbstractStringBuilder! {
		if (offset < 0) | (offset > length()) {
			throw StringIndexOutOfBoundsException(offset)
		}
		if str == nil {
			str = "null"
		}
		var len: Int32 = str.length()
		ensureCapacityInternal(count + len)
		System.arraycopy(value, offset, value, offset + len, count - offset)
		str.getChars(value, offset)
		count = count + len
		return self
	}

	// *
	//      * Inserts the string representation of the {@code char} array
	//      * argument into this sequence.
	//      * <p>
	//      * The characters of the array argument are inserted into the
	//      * contents of this sequence at the position indicated by
	//      * {@code offset}. The length of this sequence increases by
	//      * the length of the argument.
	//      * <p>
	//      * The overall effect is exactly as if the second argument were
	//      * converted to a string by the method {@link String#valueOf(char[])},
	//      * and the characters of that string were then
	//      * {@link #insert(int,String) inserted} into this character
	//      * sequence at the indicated offset.
	//      * <p>
	//      * The {@code offset} argument must be greater than or equal to
	//      * {@code 0}, and less than or equal to the {@linkplain #length() length}
	//      * of this sequence.
	//      *
	//      * @param      offset   the offset.
	//      * @param      str      a character array.
	//      * @return     a reference to this object.
	//      * @throws     StringIndexOutOfBoundsException  if the offset is invalid.
    open func insert(_ offset: Int32, _ str: [AnsiChar]) -> AbstractStringBuilder! {
		if (offset < 0) | (offset > length()) {
			throw StringIndexOutOfBoundsException(offset)
		}
		var len: Int32 = str.length
		ensureCapacityInternal(count + len)
		System.arraycopy(value, offset, value, offset + len, count - offset)
		System.arraycopy(str, 0, value, offset, len)
		count = count + len
		return self
	}

	// *
	//      * Inserts the specified {@code CharSequence} into this sequence.
	//      * <p>
	//      * The characters of the {@code CharSequence} argument are inserted,
	//      * in order, into this sequence at the indicated offset, moving up
	//      * any characters originally above that position and increasing the length
	//      * of this sequence by the length of the argument s.
	//      * <p>
	//      * The result of this method is exactly the same as if it were an
	//      * invocation of this object's
	//      * {@link #insert(int,CharSequence,int,int) insert}(dstOffset, s, 0, s.length())
	//      * method.
	//      *
	//      * <p>If {@code s} is {@code null}, then the four characters
	//      * {@code "null"} are inserted into this sequence.
	//      *
	//      * @param      dstOffset   the offset.
	//      * @param      s the sequence to be inserted
	//      * @return     a reference to this object.
	//      * @throws     IndexOutOfBoundsException  if the offset is invalid.
	open func insert(_ dstOffset: Int32, _ s: CharSequence!) -> AbstractStringBuilder! {
		if s == nil {
			s = "null"
		}
		if s is String! {
			return self.insert(dstOffset, (s as? String))
		}
		return self.insert(dstOffset, s, 0, s.length())
	}

	// *
	//      * Inserts a subsequence of the specified {@code CharSequence} into
	//      * this sequence.
	//      * <p>
	//      * The subsequence of the argument {@code s} specified by
	//      * {@code start} and {@code end} are inserted,
	//      * in order, into this sequence at the specified destination offset, moving
	//      * up any characters originally above that position. The length of this
	//      * sequence is increased by {@code end - start}.
	//      * <p>
	//      * The character at index <i>k</i> in this sequence becomes equal to:
	//      * <ul>
	//      * <li>the character at index <i>k</i> in this sequence, if
	//      * <i>k</i> is less than {@code dstOffset}
	//      * <li>the character at index <i>k</i>{@code +start-dstOffset} in
	//      * the argument {@code s}, if <i>k</i> is greater than or equal to
	//      * {@code dstOffset} but is less than {@code dstOffset+end-start}
	//      * <li>the character at index <i>k</i>{@code -(end-start)} in this
	//      * sequence, if <i>k</i> is greater than or equal to
	//      * {@code dstOffset+end-start}
	//      * </ul><p>
	//      * The {@code dstOffset} argument must be greater than or equal to
	//      * {@code 0}, and less than or equal to the {@linkplain #length() length}
	//      * of this sequence.
	//      * <p>The start argument must be nonnegative, and not greater than
	//      * {@code end}.
	//      * <p>The end argument must be greater than or equal to
	//      * {@code start}, and less than or equal to the length of s.
	//      *
	//      * <p>If {@code s} is {@code null}, then this method inserts
	//      * characters as if the s parameter was a sequence containing the four
	//      * characters {@code "null"}.
	//      *
	//      * @param      dstOffset   the offset in this sequence.
	//      * @param      s       the sequence to be inserted.
	//      * @param      start   the starting index of the subsequence to be inserted.
	//      * @param      end     the end index of the subsequence to be inserted.
	//      * @return     a reference to this object.
	//      * @throws     IndexOutOfBoundsException  if {@code dstOffset}
	//      *             is negative or greater than {@code this.length()}, or
	//      *              {@code start} or {@code end} are negative, or
	//      *              {@code start} is greater than {@code end} or
	//      *              {@code end} is greater than {@code s.length()}
	open func insert(_ dstOffset: Int32, _ s: CharSequence!, _ start: Int32, _ end: Int32) -> AbstractStringBuilder! {
		if s == nil {
			s = "null"
		}
		if (dstOffset < 0) | (dstOffset > self.length()) {
			throw IndexOutOfBoundsException("dstOffset " + dstOffset)
		}
		if (start < 0) | (end < 0) | (start > end) | (end > s.length()) {
			throw IndexOutOfBoundsException("start " + start + ", end " + end + ", s.length() " + s.length())
		}
		var len: Int32 = end - start
		ensureCapacityInternal(count + len)
		System.arraycopy(value, dstOffset, value, dstOffset + len, count - dstOffset)
		for i in start ... end - 1 {
			value[dstOffset] = s.charAt(i)
		}
		count = count + len
		return self
	}

	// *
	//      * Inserts the string representation of the {@code boolean}
	//      * argument into this sequence.
	//      * <p>
	//      * The overall effect is exactly as if the second argument were
	//      * converted to a string by the method {@link String#valueOf(boolean)},
	//      * and the characters of that string were then
	//      * {@link #insert(int,String) inserted} into this character
	//      * sequence at the indicated offset.
	//      * <p>
	//      * The {@code offset} argument must be greater than or equal to
	//      * {@code 0}, and less than or equal to the {@linkplain #length() length}
	//      * of this sequence.
	//      *
	//      * @param      offset   the offset.
	//      * @param      b        a {@code boolean}.
	//      * @return     a reference to this object.
	//      * @throws     StringIndexOutOfBoundsException  if the offset is invalid.
	open func insert(_ offset: Int32, _ b: Bool) -> AbstractStringBuilder! {
		return insert(offset, String.valueOf(b))
	}

	// *
	//      * Inserts the string representation of the {@code char}
	//      * argument into this sequence.
	//      * <p>
	//      * The overall effect is exactly as if the second argument were
	//      * converted to a string by the method {@link String#valueOf(char)},
	//      * and the character in that string were then
	//      * {@link #insert(int,String) inserted} into this character
	//      * sequence at the indicated offset.
	//      * <p>
	//      * The {@code offset} argument must be greater than or equal to
	//      * {@code 0}, and less than or equal to the {@linkplain #length() length}
	//      * of this sequence.
	//      *
	//      * @param      offset   the offset.
	//      * @param      c        a {@code char}.
	//      * @return     a reference to this object.
	//      * @throws     IndexOutOfBoundsException  if the offset is invalid.
	open func insert(_ offset: Int32, _ c: AnsiChar) -> AbstractStringBuilder! {
		ensureCapacityInternal(count + 1)
		System.arraycopy(value, offset, value, offset + 1, count - offset)
		value[offset] = c
		count = count + 1
		return self
	}

	// *
	//      * Inserts the string representation of the second {@code int}
	//      * argument into this sequence.
	//      * <p>
	//      * The overall effect is exactly as if the second argument were
	//      * converted to a string by the method {@link String#valueOf(int)},
	//      * and the characters of that string were then
	//      * {@link #insert(int,String) inserted} into this character
	//      * sequence at the indicated offset.
	//      * <p>
	//      * The {@code offset} argument must be greater than or equal to
	//      * {@code 0}, and less than or equal to the {@linkplain #length() length}
	//      * of this sequence.
	//      *
	//      * @param      offset   the offset.
	//      * @param      i        an {@code int}.
	//      * @return     a reference to this object.
	//      * @throws     StringIndexOutOfBoundsException  if the offset is invalid.
	open func insert(_ offset: Int32, _ i: Int32) -> AbstractStringBuilder! {
		return insert(offset, String.valueOf(i))
	}

	// *
	//      * Inserts the string representation of the {@code long}
	//      * argument into this sequence.
	//      * <p>
	//      * The overall effect is exactly as if the second argument were
	//      * converted to a string by the method {@link String#valueOf(long)},
	//      * and the characters of that string were then
	//      * {@link #insert(int,String) inserted} into this character
	//      * sequence at the indicated offset.
	//      * <p>
	//      * The {@code offset} argument must be greater than or equal to
	//      * {@code 0}, and less than or equal to the {@linkplain #length() length}
	//      * of this sequence.
	//      *
	//      * @param      offset   the offset.
	//      * @param      l        a {@code long}.
	//      * @return     a reference to this object.
	//      * @throws     StringIndexOutOfBoundsException  if the offset is invalid.
	open func insert(_ offset: Int32, _ l: Int64) -> AbstractStringBuilder! {
		return insert(offset, String.valueOf(l))
	}

	// *
	//      * Inserts the string representation of the {@code float}
	//      * argument into this sequence.
	//      * <p>
	//      * The overall effect is exactly as if the second argument were
	//      * converted to a string by the method {@link String#valueOf(float)},
	//      * and the characters of that string were then
	//      * {@link #insert(int,String) inserted} into this character
	//      * sequence at the indicated offset.
	//      * <p>
	//      * The {@code offset} argument must be greater than or equal to
	//      * {@code 0}, and less than or equal to the {@linkplain #length() length}
	//      * of this sequence.
	//      *
	//      * @param      offset   the offset.
	//      * @param      f        a {@code float}.
	//      * @return     a reference to this object.
	//      * @throws     StringIndexOutOfBoundsException  if the offset is invalid.
	open func insert(_ offset: Int32, _ f: Float32) -> AbstractStringBuilder! {
		return insert(offset, String.valueOf(f))
	}

	// *
	//      * Inserts the string representation of the {@code double}
	//      * argument into this sequence.
	//      * <p>
	//      * The overall effect is exactly as if the second argument were
	//      * converted to a string by the method {@link String#valueOf(double)},
	//      * and the characters of that string were then
	//      * {@link #insert(int,String) inserted} into this character
	//      * sequence at the indicated offset.
	//      * <p>
	//      * The {@code offset} argument must be greater than or equal to
	//      * {@code 0}, and less than or equal to the {@linkplain #length() length}
	//      * of this sequence.
	//      *
	//      * @param      offset   the offset.
	//      * @param      d        a {@code double}.
	//      * @return     a reference to this object.
	//      * @throws     StringIndexOutOfBoundsException  if the offset is invalid.
	open func insert(_ offset: Int32, _ d: Float64) -> AbstractStringBuilder! {
		return insert(offset, String.valueOf(d))
	}

	// *
	//      * Returns the index within this string of the first occurrence of the
	//      * specified substring. The integer returned is the smallest value
	//      * <i>k</i> such that:
	//      * <pre>{@code
	//      * this.toString().startsWith(str, <i>k</i>)
	//      * }</pre>
	//      * is {@code true}.
	//      *
	//      * @param   str   any string.
	//      * @return  if the string argument occurs as a substring within this
	//      *          object, then the index of the first character of the first
	//      *          such substring is returned; if it does not occur as a
	//      *          substring, {@code -1} is returned.
	open func indexOf(_ str: String!) -> Int32 {
		return indexOf(str, 0)
	}

	// *
	//      * Returns the index within this string of the first occurrence of the
	//      * specified substring, starting at the specified index.  The integer
	//      * returned is the smallest value {@code k} for which:
	//      * <pre>{@code
	//      *     k >= Math.min(fromIndex, this.length()) &&
	//      *                   this.toString().startsWith(str, k)
	//      * }</pre>
	//      * If no such value of <i>k</i> exists, then -1 is returned.
	//      *
	//      * @param   str         the substring for which to search.
	//      * @param   fromIndex   the index from which to start the search.
	//      * @return  the index within this string of the first occurrence of the
	//      *          specified substring, starting at the specified index.
	open func indexOf(_ str: String!, _ fromIndex: Int32) -> Int32 {
		return String.indexOf(value, 0, count, str, fromIndex)
	}

	// *
	//      * Returns the index within this string of the rightmost occurrence
	//      * of the specified substring.  The rightmost empty string "" is
	//      * considered to occur at the index value {@code this.length()}.
	//      * The returned index is the largest value <i>k</i> such that
	//      * <pre>{@code
	//      * this.toString().startsWith(str, k)
	//      * }</pre>
	//      * is true.
	//      *
	//      * @param   str   the substring to search for.
	//      * @return  if the string argument occurs one or more times as a substring
	//      *          within this object, then the index of the first character of
	//      *          the last such substring is returned. If it does not occur as
	//      *          a substring, {@code -1} is returned.
	open func lastIndexOf(_ str: String!) -> Int32 {
		return lastIndexOf(str, count)
	}

	// *
	//      * Returns the index within this string of the last occurrence of the
	//      * specified substring. The integer returned is the largest value <i>k</i>
	//      * such that:
	//      * <pre>{@code
	//      *     k <= Math.min(fromIndex, this.length()) &&
	//      *                   this.toString().startsWith(str, k)
	//      * }</pre>
	//      * If no such value of <i>k</i> exists, then -1 is returned.
	//      *
	//      * @param   str         the substring to search for.
	//      * @param   fromIndex   the index to start the search from.
	//      * @return  the index within this sequence of the last occurrence of the
	//      *          specified substring.
	open func lastIndexOf(_ str: String!, _ fromIndex: Int32) -> Int32 {
		return String.lastIndexOf(value, 0, count, str, fromIndex)
	}

	// *
	//      * Causes this character sequence to be replaced by the reverse of
	//      * the sequence. If there are any surrogate pairs included in the
	//      * sequence, these are treated as single characters for the
	//      * reverse operation. Thus, the order of the high-low surrogates
	//      * is never reversed.
	//      *
	//      * Let <i>n</i> be the character length of this character sequence
	//      * (not the length in {@code char} values) just prior to
	//      * execution of the {@code reverse} method. Then the
	//      * character at index <i>k</i> in the new character sequence is
	//      * equal to the character at index <i>n-k-1</i> in the old
	//      * character sequence.
	//      *
	//      * <p>Note that the reverse operation may result in producing
	//      * surrogate pairs that were unpaired low-surrogates and
	//      * high-surrogates before the operation. For example, reversing
	//      * "\u005CuDC00\u005CuD800" produces "\u005CuD800\u005CuDC00" which is
	//      * a valid surrogate pair.
	//      *
	//      * @return  a reference to this object.
	open func reverse() -> AbstractStringBuilder! {
        
		var hasSurrogates: Bool = false
		var n: Int32 = count - 1
		//for var j: Int32 = (n - 1) >> 1; j >= 0; j-- {
        var j: Int32 = (n - 1) >> 1
        while j >= 0 {
			var k: Int32 = n - j
			var cj: AnsiChar = value[j]
			var ck: AnsiChar = value[k]
			value[j] = ck
			value[k] = cj
			if Character.isSurrogate(cj) | Character.isSurrogate(ck) {
				hasSurrogates = true
			}
            j--
		}
		if hasSurrogates {
			reverseAllValidSurrogatePairs()
		}
		return self
	}

	// * Outlined helper method for reverse()
	private func reverseAllValidSurrogatePairs() {
		for i in 0 ... count - 1 - 1 {
			var c2: AnsiChar = value[i]
			if Character.isLowSurrogate(c2) {
				var c1: AnsiChar = value[i + 1]
				if Character.isHighSurrogate(c1) {
					value[i] = c1
					inc(i)
					value[i] = c2
				}
			}
		}
	}

	// *
	//      * Returns a string representing the data in this sequence.
	//      * A new {@code String} object is allocated and initialized to
	//      * contain the character sequence currently represented by this
	//      * object. This {@code String} is then returned. Subsequent
	//      * changes to this sequence do not affect the contents of the
	//      * {@code String}.
	//      *
	//      * @return  a string representation of this sequence of characters.
	// @Override
	public /* __abstract */ func toString() -> String! {
	}

	// *
	//      * Needed by {@code String} for the contentEquals method.
    internal func getValue() -> [AnsiChar] {
		return value
	}
}

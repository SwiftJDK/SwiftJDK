
open class Error : Throwable { 
	internal let serialVersionUID: Int64 = 4980196508277280342

	// *
	//      * Constructs a new error with {@code null} as its detail message.
	//      * The cause is not initialized, and may subsequently be initialized by a
	//      * call to {@link #initCause}.
	public init() {
		super.init()
	}

	// *
	//      * Constructs a new error with the specified detail message.  The
	//      * cause is not initialized, and may subsequently be initialized by
	//      * a call to {@link #initCause}.
	//      *
	//      * @param   message   the detail message. The detail message is saved for
	//      *          later retrieval by the {@link #getMessage()} method.
	public init(_ message: String!) {
		super.init(message)
	}

	// *
	//      * Constructs a new error with the specified detail message and
	//      * cause.  <p>Note that the detail message associated with
	//      * {@code cause} is <i>not</i> automatically incorporated in
	//      * this error's detail message.
	//      *
	//      * @param  message the detail message (which is saved for later retrieval
	//      *         by the {@link #getMessage()} method).
	//      * @param  cause the cause (which is saved for later retrieval by the
	//      *         {@link #getCause()} method).  (A {@code null} value is
	//      *         permitted, and indicates that the cause is nonexistent or
	//      *         unknown.)
	//      * @since  1.4
	public init(_ message: String!, _ cause: Throwable!) {
		super.init(message, cause)
	}

	// *
	//      * Constructs a new error with the specified cause and a detail
	//      * message of {@code (cause==null ? null : cause.toString())} (which
	//      * typically contains the class and detail message of {@code cause}).
	//      * This constructor is useful for errors that are little more than
	//      * wrappers for other throwables.
	//      *
	//      * @param  cause the cause (which is saved for later retrieval by the
	//      *         {@link #getCause()} method).  (A {@code null} value is
	//      *         permitted, and indicates that the cause is nonexistent or
	//      *         unknown.)
	//      * @since  1.4
	public init(_ cause: Throwable!) {
		super.init(cause)
	}

	// *
	//      * Constructs a new error with the specified detail message,
	//      * cause, suppression enabled or disabled, and writable stack
	//      * trace enabled or disabled.
	//      *
	//      * @param  message the detail message.
	//      * @param cause the cause.  (A {@code null} value is permitted,
	//      * and indicates that the cause is nonexistent or unknown.)
	//      * @param enableSuppression whether or not suppression is enabled
	//      *                          or disabled
	//      * @param writableStackTrace whether or not the stack trace should
	//      *                           be writable
	//      *
	//      * @since 1.7
	public init(_ message: String!, _ cause: Throwable!, _ enableSuppression: Bool, _ writableStackTrace: Bool) {
		super.init(message, cause, enableSuppression, writableStackTrace)
	}
}

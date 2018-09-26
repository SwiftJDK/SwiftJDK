



/// class java.lang.String ///

open class JavaString: java_swift.JavaObject, /* interface java.io.Serializable */ UnavailableProtocol, JavaComparable, CharSequence {

    

    private static var JavaStringJNIClass: jclass?

    /// public static final java.util.Comparator java.lang.String.CASE_INSENSITIVE_ORDER

    private static var CASE_INSENSITIVE_ORDER_FieldID: jfieldID?

    open static var CASE_INSENSITIVE_ORDER: /* interface java.util.Comparator */ UnavailableProtocol! {
        get {
            let __value = JNIField.GetStaticObjectField( fieldName: "CASE_INSENSITIVE_ORDER", fieldType: "Ljava/util/Comparator;", fieldCache: &CASE_INSENSITIVE_ORDER_FieldID, className: "java/lang/String", classCache: &JavaStringJNIClass )
            defer { JNI.DeleteLocalRef( __value ) }
            return __value != nil ? /* interface java.util.Comparator */ UnavailableProtocolForward( javaObject: __value ) : nil
        }
    }

    /// private static final java.io.ObjectStreamField[] java.lang.String.serialPersistentFields

    /// private static final long java.lang.String.serialVersionUID

    /// private int java.lang.String.hash

    /// private final char[] java.lang.String.value

    /// public java.lang.String()

    private static var new_MethodID_1: jmethodID?

    public convenience init() {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __object = JNIMethod.NewObject( className: "java/lang/String", classCache: &JavaString.JavaStringJNIClass, methodSig: "()V", methodCache: &JavaString.new_MethodID_1, args: &__args, locals: &__locals )
        self.init( javaObject: __object )
        JNI.DeleteLocalRef( __object )
    }

    /// public java.lang.String(java.lang.String)

    private static var new_MethodID_2: jmethodID?

    public convenience init( arg0: String? ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __object = JNIMethod.NewObject( className: "java/lang/String", classCache: &JavaString.JavaStringJNIClass, methodSig: "(Ljava/lang/String;)V", methodCache: &JavaString.new_MethodID_2, args: &__args, locals: &__locals )
        self.init( javaObject: __object )
        JNI.DeleteLocalRef( __object )
    }

    public convenience init( _ _arg0: String? ) {
        self.init( arg0: _arg0 )
    }

    /// public java.lang.String(java.lang.StringBuffer)

    private static var new_MethodID_3: jmethodID?

    public convenience init( arg0: StringBuffer? ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __object = JNIMethod.NewObject( className: "java/lang/String", classCache: &JavaString.JavaStringJNIClass, methodSig: "(Ljava/lang/StringBuffer;)V", methodCache: &JavaString.new_MethodID_3, args: &__args, locals: &__locals )
        self.init( javaObject: __object )
        JNI.DeleteLocalRef( __object )
    }

    public convenience init( _ _arg0: StringBuffer? ) {
        self.init( arg0: _arg0 )
    }

    /// public java.lang.String(java.lang.StringBuilder)

    private static var new_MethodID_4: jmethodID?

    public convenience init( arg0: StringBuilder? ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __object = JNIMethod.NewObject( className: "java/lang/String", classCache: &JavaString.JavaStringJNIClass, methodSig: "(Ljava/lang/StringBuilder;)V", methodCache: &JavaString.new_MethodID_4, args: &__args, locals: &__locals )
        self.init( javaObject: __object )
        JNI.DeleteLocalRef( __object )
    }

    public convenience init( _ _arg0: StringBuilder? ) {
        self.init( arg0: _arg0 )
    }

    /// public java.lang.String(int[],int,int)

    private static var new_MethodID_5: jmethodID?

    public convenience init( arg0: [Int32]?, arg1: Int, arg2: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = jvalue( i: jint(arg1) )
        __args[2] = jvalue( i: jint(arg2) )
        let __object = JNIMethod.NewObject( className: "java/lang/String", classCache: &JavaString.JavaStringJNIClass, methodSig: "([III)V", methodCache: &JavaString.new_MethodID_5, args: &__args, locals: &__locals )
        self.init( javaObject: __object )
        JNI.DeleteLocalRef( __object )
    }

    public convenience init( _ _arg0: [Int32]?, _ _arg1: Int, _ _arg2: Int ) {
        self.init( arg0: _arg0, arg1: _arg1, arg2: _arg2 )
    }

    /// public java.lang.String(byte[])

    private static var new_MethodID_6: jmethodID?

    public convenience init( arg0: [Int8]? ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __object = JNIMethod.NewObject( className: "java/lang/String", classCache: &JavaString.JavaStringJNIClass, methodSig: "([B)V", methodCache: &JavaString.new_MethodID_6, args: &__args, locals: &__locals )
        self.init( javaObject: __object )
        JNI.DeleteLocalRef( __object )
    }

    public convenience init( _ _arg0: [Int8]? ) {
        self.init( arg0: _arg0 )
    }

    /// public java.lang.String(byte[],int)

    private static var new_MethodID_7: jmethodID?

    public convenience init( arg0: [Int8]?, arg1: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = jvalue( i: jint(arg1) )
        let __object = JNIMethod.NewObject( className: "java/lang/String", classCache: &JavaString.JavaStringJNIClass, methodSig: "([BI)V", methodCache: &JavaString.new_MethodID_7, args: &__args, locals: &__locals )
        self.init( javaObject: __object )
        JNI.DeleteLocalRef( __object )
    }

    public convenience init( _ _arg0: [Int8]?, _ _arg1: Int ) {
        self.init( arg0: _arg0, arg1: _arg1 )
    }

    /// public java.lang.String(byte[],int,int)

    private static var new_MethodID_8: jmethodID?

    public convenience init( arg0: [Int8]?, arg1: Int, arg2: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = jvalue( i: jint(arg1) )
        __args[2] = jvalue( i: jint(arg2) )
        let __object = JNIMethod.NewObject( className: "java/lang/String", classCache: &JavaString.JavaStringJNIClass, methodSig: "([BII)V", methodCache: &JavaString.new_MethodID_8, args: &__args, locals: &__locals )
        self.init( javaObject: __object )
        JNI.DeleteLocalRef( __object )
    }

    public convenience init( _ _arg0: [Int8]?, _ _arg1: Int, _ _arg2: Int ) {
        self.init( arg0: _arg0, arg1: _arg1, arg2: _arg2 )
    }

    /// public java.lang.String(byte[],int,int,int)

    private static var new_MethodID_9: jmethodID?

    public convenience init( arg0: [Int8]?, arg1: Int, arg2: Int, arg3: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 4 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = jvalue( i: jint(arg1) )
        __args[2] = jvalue( i: jint(arg2) )
        __args[3] = jvalue( i: jint(arg3) )
        let __object = JNIMethod.NewObject( className: "java/lang/String", classCache: &JavaString.JavaStringJNIClass, methodSig: "([BIII)V", methodCache: &JavaString.new_MethodID_9, args: &__args, locals: &__locals )
        self.init( javaObject: __object )
        JNI.DeleteLocalRef( __object )
    }

    public convenience init( _ _arg0: [Int8]?, _ _arg1: Int, _ _arg2: Int, _ _arg3: Int ) {
        self.init( arg0: _arg0, arg1: _arg1, arg2: _arg2, arg3: _arg3 )
    }

    /// public java.lang.String(byte[],int,int,java.lang.String) throws java.io.UnsupportedEncodingException

    private static var new_MethodID_10: jmethodID?

    public convenience init( arg0: [Int8]?, arg1: Int, arg2: Int, arg3: String? ) throws {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 4 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = jvalue( i: jint(arg1) )
        __args[2] = jvalue( i: jint(arg2) )
        __args[3] = JNIType.toJava( value: arg3, locals: &__locals )
        let __object = JNIMethod.NewObject( className: "java/lang/String", classCache: &JavaString.JavaStringJNIClass, methodSig: "([BIILjava/lang/String;)V", methodCache: &JavaString.new_MethodID_10, args: &__args, locals: &__locals )
        if let throwable = JNI.ExceptionCheck() {
            defer { JNI.DeleteLocalRef( throwable ) }
            throw /* class java.io.UnsupportedEncodingException */ UnavailableObject( javaObject: throwable )
        }
        self.init( javaObject: __object )
        JNI.DeleteLocalRef( __object )
    }

    public convenience init( _ _arg0: [Int8]?, _ _arg1: Int, _ _arg2: Int, _ _arg3: String? ) throws {
        try self.init( arg0: _arg0, arg1: _arg1, arg2: _arg2, arg3: _arg3 )
    }

    /// public java.lang.String(byte[],int,int,java.nio.charset.Charset)

    private static var new_MethodID_11: jmethodID?

    public convenience init( arg0: [Int8]?, arg1: Int, arg2: Int, arg3: /* class java.nio.charset.Charset */ UnavailableObject? ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 4 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = jvalue( i: jint(arg1) )
        __args[2] = jvalue( i: jint(arg2) )
        __args[3] = JNIType.toJava( value: arg3, locals: &__locals )
        let __object = JNIMethod.NewObject( className: "java/lang/String", classCache: &JavaString.JavaStringJNIClass, methodSig: "([BIILjava/nio/charset/Charset;)V", methodCache: &JavaString.new_MethodID_11, args: &__args, locals: &__locals )
        self.init( javaObject: __object )
        JNI.DeleteLocalRef( __object )
    }

    public convenience init( _ _arg0: [Int8]?, _ _arg1: Int, _ _arg2: Int, _ _arg3: /* class java.nio.charset.Charset */ UnavailableObject? ) {
        self.init( arg0: _arg0, arg1: _arg1, arg2: _arg2, arg3: _arg3 )
    }

    /// public java.lang.String(byte[],java.lang.String) throws java.io.UnsupportedEncodingException

    private static var new_MethodID_12: jmethodID?

    public convenience init( arg0: [Int8]?, arg1: String? ) throws {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1, locals: &__locals )
        let __object = JNIMethod.NewObject( className: "java/lang/String", classCache: &JavaString.JavaStringJNIClass, methodSig: "([BLjava/lang/String;)V", methodCache: &JavaString.new_MethodID_12, args: &__args, locals: &__locals )
        if let throwable = JNI.ExceptionCheck() {
            defer { JNI.DeleteLocalRef( throwable ) }
            throw /* class java.io.UnsupportedEncodingException */ UnavailableObject( javaObject: throwable )
        }
        self.init( javaObject: __object )
        JNI.DeleteLocalRef( __object )
    }

    public convenience init( _ _arg0: [Int8]?, _ _arg1: String? ) throws {
        try self.init( arg0: _arg0, arg1: _arg1 )
    }

    /// public java.lang.String(byte[],java.nio.charset.Charset)

    private static var new_MethodID_13: jmethodID?

    public convenience init( arg0: [Int8]?, arg1: /* class java.nio.charset.Charset */ UnavailableObject? ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1, locals: &__locals )
        let __object = JNIMethod.NewObject( className: "java/lang/String", classCache: &JavaString.JavaStringJNIClass, methodSig: "([BLjava/nio/charset/Charset;)V", methodCache: &JavaString.new_MethodID_13, args: &__args, locals: &__locals )
        self.init( javaObject: __object )
        JNI.DeleteLocalRef( __object )
    }

    public convenience init( _ _arg0: [Int8]?, _ _arg1: /* class java.nio.charset.Charset */ UnavailableObject? ) {
        self.init( arg0: _arg0, arg1: _arg1 )
    }

    /// public java.lang.String(char[])

    private static var new_MethodID_14: jmethodID?

    public convenience init( arg0: [UInt16]? ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __object = JNIMethod.NewObject( className: "java/lang/String", classCache: &JavaString.JavaStringJNIClass, methodSig: "([C)V", methodCache: &JavaString.new_MethodID_14, args: &__args, locals: &__locals )
        self.init( javaObject: __object )
        JNI.DeleteLocalRef( __object )
    }

    public convenience init( _ _arg0: [UInt16]? ) {
        self.init( arg0: _arg0 )
    }

    /// java.lang.String(char[],boolean)

    // Skipping init: true false false 

    /// public java.lang.String(char[],int,int)

    private static var new_MethodID_15: jmethodID?

    public convenience init( arg0: [UInt16]?, arg1: Int, arg2: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = jvalue( i: jint(arg1) )
        __args[2] = jvalue( i: jint(arg2) )
        let __object = JNIMethod.NewObject( className: "java/lang/String", classCache: &JavaString.JavaStringJNIClass, methodSig: "([CII)V", methodCache: &JavaString.new_MethodID_15, args: &__args, locals: &__locals )
        self.init( javaObject: __object )
        JNI.DeleteLocalRef( __object )
    }

    public convenience init( _ _arg0: [UInt16]?, _ _arg1: Int, _ _arg2: Int ) {
        self.init( arg0: _arg0, arg1: _arg1, arg2: _arg2 )
    }

    /// private static void java.lang.String.checkBounds(byte[],int,int)

    /// public static java.lang.String java.lang.String.copyValueOf(char[])

    private static var copyValueOf_MethodID_16: jmethodID?

    open class func copyValueOf( arg0: [UInt16]? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/String", classCache: &JavaStringJNIClass, methodName: "copyValueOf", methodSig: "([C)Ljava/lang/String;", methodCache: &copyValueOf_MethodID_16, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func copyValueOf( _ _arg0: [UInt16]? ) -> String! {
        return copyValueOf( arg0: _arg0 )
    }

    /// public static java.lang.String java.lang.String.copyValueOf(char[],int,int)

    private static var copyValueOf_MethodID_17: jmethodID?

    open class func copyValueOf( arg0: [UInt16]?, arg1: Int, arg2: Int ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = jvalue( i: jint(arg1) )
        __args[2] = jvalue( i: jint(arg2) )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/String", classCache: &JavaStringJNIClass, methodName: "copyValueOf", methodSig: "([CII)Ljava/lang/String;", methodCache: &copyValueOf_MethodID_17, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func copyValueOf( _ _arg0: [UInt16]?, _ _arg1: Int, _ _arg2: Int ) -> String! {
        return copyValueOf( arg0: _arg0, arg1: _arg1, arg2: _arg2 )
    }

    /// public static java.lang.String java.lang.String.format(java.lang.String,java.lang.Object[])

    private static var format_MethodID_18: jmethodID?

    open class func format( arg0: String?, arg1: [JavaObject]? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1, locals: &__locals )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/String", classCache: &JavaStringJNIClass, methodName: "format", methodSig: "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", methodCache: &format_MethodID_18, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func format( _ _arg0: String?, _ _arg1: [JavaObject]? ) -> String! {
        return format( arg0: _arg0, arg1: _arg1 )
    }

    /// public static java.lang.String java.lang.String.format(java.util.Locale,java.lang.String,java.lang.Object[])

    private static var format_MethodID_19: jmethodID?

    open class func format( arg0: /* class java.util.Locale */ UnavailableObject?, arg1: String?, arg2: [JavaObject]? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1, locals: &__locals )
        __args[2] = JNIType.toJava( value: arg2, locals: &__locals )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/String", classCache: &JavaStringJNIClass, methodName: "format", methodSig: "(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", methodCache: &format_MethodID_19, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func format( _ _arg0: /* class java.util.Locale */ UnavailableObject?, _ _arg1: String?, _ _arg2: [JavaObject]? ) -> String! {
        return format( arg0: _arg0, arg1: _arg1, arg2: _arg2 )
    }

    /// static int java.lang.String.indexOf(char[],int,int,java.lang.String,int)

    // Skipping method: true false false false false 

    /// static int java.lang.String.indexOf(char[],int,int,char[],int,int,int)

    // Skipping method: true false false false false 

    /// public static java.lang.String java.lang.String.join(java.lang.CharSequence,java.lang.Iterable)

    private static var join_MethodID_20: jmethodID?

    open class func join( arg0: CharSequence?, arg1: Iterable? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1, locals: &__locals )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/String", classCache: &JavaStringJNIClass, methodName: "join", methodSig: "(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;", methodCache: &join_MethodID_20, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func join( _ _arg0: CharSequence?, _ _arg1: Iterable? ) -> String! {
        return join( arg0: _arg0, arg1: _arg1 )
    }

    /// public static java.lang.String java.lang.String.join(java.lang.CharSequence,java.lang.CharSequence[])

    private static var join_MethodID_21: jmethodID?

    open class func join( arg0: CharSequence?, arg1: [CharSequence]? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1, locals: &__locals )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/String", classCache: &JavaStringJNIClass, methodName: "join", methodSig: "(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;", methodCache: &join_MethodID_21, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func join( _ _arg0: CharSequence?, _ _arg1: [CharSequence]? ) -> String! {
        return join( arg0: _arg0, arg1: _arg1 )
    }

    /// static int java.lang.String.lastIndexOf(char[],int,int,java.lang.String,int)

    // Skipping method: true false false false false 

    /// static int java.lang.String.lastIndexOf(char[],int,int,char[],int,int,int)

    // Skipping method: true false false false false 

    /// public static java.lang.String java.lang.String.valueOf(boolean)

    private static var valueOf_MethodID_22: jmethodID?

    open class func valueOf( arg0: Bool ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = jvalue( z: jboolean(arg0 ? JNI_TRUE : JNI_FALSE) )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/String", classCache: &JavaStringJNIClass, methodName: "valueOf", methodSig: "(Z)Ljava/lang/String;", methodCache: &valueOf_MethodID_22, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func valueOf( _ _arg0: Bool ) -> String! {
        return valueOf( arg0: _arg0 )
    }

    /// public static java.lang.String java.lang.String.valueOf(double)

    private static var valueOf_MethodID_23: jmethodID?

    open class func valueOf( arg0: Double ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = jvalue( d: arg0 )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/String", classCache: &JavaStringJNIClass, methodName: "valueOf", methodSig: "(D)Ljava/lang/String;", methodCache: &valueOf_MethodID_23, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func valueOf( _ _arg0: Double ) -> String! {
        return valueOf( arg0: _arg0 )
    }

    /// public static java.lang.String java.lang.String.valueOf(float)

    private static var valueOf_MethodID_24: jmethodID?

    open class func valueOf( arg0: Float ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = jvalue( f: arg0 )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/String", classCache: &JavaStringJNIClass, methodName: "valueOf", methodSig: "(F)Ljava/lang/String;", methodCache: &valueOf_MethodID_24, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func valueOf( _ _arg0: Float ) -> String! {
        return valueOf( arg0: _arg0 )
    }

    /// public static java.lang.String java.lang.String.valueOf(int)

    private static var valueOf_MethodID_25: jmethodID?

    open class func valueOf( arg0: Int ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = jvalue( i: jint(arg0) )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/String", classCache: &JavaStringJNIClass, methodName: "valueOf", methodSig: "(I)Ljava/lang/String;", methodCache: &valueOf_MethodID_25, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func valueOf( _ _arg0: Int ) -> String! {
        return valueOf( arg0: _arg0 )
    }

    /// public static java.lang.String java.lang.String.valueOf(long)

    private static var valueOf_MethodID_26: jmethodID?

    open class func valueOf( arg0: Int64 ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = jvalue( j: arg0 )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/String", classCache: &JavaStringJNIClass, methodName: "valueOf", methodSig: "(J)Ljava/lang/String;", methodCache: &valueOf_MethodID_26, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func valueOf( _ _arg0: Int64 ) -> String! {
        return valueOf( arg0: _arg0 )
    }

    /// public static java.lang.String java.lang.String.valueOf(char)

    private static var valueOf_MethodID_27: jmethodID?

    open class func valueOf( arg0: UInt16 ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = jvalue( c: arg0 )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/String", classCache: &JavaStringJNIClass, methodName: "valueOf", methodSig: "(C)Ljava/lang/String;", methodCache: &valueOf_MethodID_27, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func valueOf( _ _arg0: UInt16 ) -> String! {
        return valueOf( arg0: _arg0 )
    }

    /// public static java.lang.String java.lang.String.valueOf(char[])

    private static var valueOf_MethodID_28: jmethodID?

    open class func valueOf( arg0: [UInt16]? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/String", classCache: &JavaStringJNIClass, methodName: "valueOf", methodSig: "([C)Ljava/lang/String;", methodCache: &valueOf_MethodID_28, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func valueOf( _ _arg0: [UInt16]? ) -> String! {
        return valueOf( arg0: _arg0 )
    }

    /// public static java.lang.String java.lang.String.valueOf(char[],int,int)

    private static var valueOf_MethodID_29: jmethodID?

    open class func valueOf( arg0: [UInt16]?, arg1: Int, arg2: Int ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = jvalue( i: jint(arg1) )
        __args[2] = jvalue( i: jint(arg2) )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/String", classCache: &JavaStringJNIClass, methodName: "valueOf", methodSig: "([CII)Ljava/lang/String;", methodCache: &valueOf_MethodID_29, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func valueOf( _ _arg0: [UInt16]?, _ _arg1: Int, _ _arg2: Int ) -> String! {
        return valueOf( arg0: _arg0, arg1: _arg1, arg2: _arg2 )
    }

    /// public static java.lang.String java.lang.String.valueOf(java.lang.Object)

    private static var valueOf_MethodID_30: jmethodID?

    open class func valueOf( arg0: java_swift.JavaObject? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/String", classCache: &JavaStringJNIClass, methodName: "valueOf", methodSig: "(Ljava/lang/Object;)Ljava/lang/String;", methodCache: &valueOf_MethodID_30, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func valueOf( _ _arg0: java_swift.JavaObject? ) -> String! {
        return valueOf( arg0: _arg0 )
    }

    /// public char java.lang.String.charAt(int)

    private static var charAt_MethodID_31: jmethodID?

    open func charAt( arg0: Int ) -> UInt16 {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = jvalue( i: jint(arg0) )
        let __return = JNIMethod.CallCharMethod( object: javaObject, methodName: "charAt", methodSig: "(I)C", methodCache: &JavaString.charAt_MethodID_31, args: &__args, locals: &__locals )
        return __return
    }

    open func charAt( _ _arg0: Int ) -> UInt16 {
        return charAt( arg0: _arg0 )
    }

    /// public int java.lang.String.codePointAt(int)

    private static var codePointAt_MethodID_32: jmethodID?

    open func codePointAt( arg0: Int ) -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = jvalue( i: jint(arg0) )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "codePointAt", methodSig: "(I)I", methodCache: &JavaString.codePointAt_MethodID_32, args: &__args, locals: &__locals )
        return Int(__return)
    }

    open func codePointAt( _ _arg0: Int ) -> Int {
        return codePointAt( arg0: _arg0 )
    }

    /// public int java.lang.String.codePointBefore(int)

    private static var codePointBefore_MethodID_33: jmethodID?

    open func codePointBefore( arg0: Int ) -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = jvalue( i: jint(arg0) )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "codePointBefore", methodSig: "(I)I", methodCache: &JavaString.codePointBefore_MethodID_33, args: &__args, locals: &__locals )
        return Int(__return)
    }

    open func codePointBefore( _ _arg0: Int ) -> Int {
        return codePointBefore( arg0: _arg0 )
    }

    /// public int java.lang.String.codePointCount(int,int)

    private static var codePointCount_MethodID_34: jmethodID?

    open func codePointCount( arg0: Int, arg1: Int ) -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = jvalue( i: jint(arg0) )
        __args[1] = jvalue( i: jint(arg1) )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "codePointCount", methodSig: "(II)I", methodCache: &JavaString.codePointCount_MethodID_34, args: &__args, locals: &__locals )
        return Int(__return)
    }

    open func codePointCount( _ _arg0: Int, _ _arg1: Int ) -> Int {
        return codePointCount( arg0: _arg0, arg1: _arg1 )
    }

    /// public int java.lang.String.compareTo(java.lang.String)

    private static var compareTo_MethodID_35: jmethodID?

    open func compareTo( arg0: String? ) -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "compareTo", methodSig: "(Ljava/lang/String;)I", methodCache: &JavaString.compareTo_MethodID_35, args: &__args, locals: &__locals )
        return Int(__return)
    }

    open func compareTo( _ _arg0: String? ) -> Int {
        return compareTo( arg0: _arg0 )
    }

    /// public int java.lang.String.compareTo(java.lang.Object)

    private static var compareTo_MethodID_36: jmethodID?

    open func compareTo( arg0: java_swift.JavaObject? ) -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "compareTo", methodSig: "(Ljava/lang/Object;)I", methodCache: &JavaString.compareTo_MethodID_36, args: &__args, locals: &__locals )
        return Int(__return)
    }

    open func compareTo( _ _arg0: java_swift.JavaObject? ) -> Int {
        return compareTo( arg0: _arg0 )
    }

    /// public int java.lang.String.compareToIgnoreCase(java.lang.String)

    private static var compareToIgnoreCase_MethodID_37: jmethodID?

    open func compareToIgnoreCase( arg0: String? ) -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "compareToIgnoreCase", methodSig: "(Ljava/lang/String;)I", methodCache: &JavaString.compareToIgnoreCase_MethodID_37, args: &__args, locals: &__locals )
        return Int(__return)
    }

    open func compareToIgnoreCase( _ _arg0: String? ) -> Int {
        return compareToIgnoreCase( arg0: _arg0 )
    }

    /// public java.lang.String java.lang.String.concat(java.lang.String)

    private static var concat_MethodID_38: jmethodID?

    open func concat( arg0: String? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "concat", methodSig: "(Ljava/lang/String;)Ljava/lang/String;", methodCache: &JavaString.concat_MethodID_38, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open func concat( _ _arg0: String? ) -> String! {
        return concat( arg0: _arg0 )
    }

    /// public boolean java.lang.String.contains(java.lang.CharSequence)

    private static var contains_MethodID_39: jmethodID?

    open func contains( arg0: CharSequence? ) -> Bool {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "contains", methodSig: "(Ljava/lang/CharSequence;)Z", methodCache: &JavaString.contains_MethodID_39, args: &__args, locals: &__locals )
        return __return != jboolean(JNI_FALSE)
    }

    open func contains( _ _arg0: CharSequence? ) -> Bool {
        return contains( arg0: _arg0 )
    }

    /// public boolean java.lang.String.contentEquals(java.lang.CharSequence)

    private static var contentEquals_MethodID_40: jmethodID?

    open func contentEquals( arg0: CharSequence? ) -> Bool {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "contentEquals", methodSig: "(Ljava/lang/CharSequence;)Z", methodCache: &JavaString.contentEquals_MethodID_40, args: &__args, locals: &__locals )
        return __return != jboolean(JNI_FALSE)
    }

    open func contentEquals( _ _arg0: CharSequence? ) -> Bool {
        return contentEquals( arg0: _arg0 )
    }

    /// public boolean java.lang.String.contentEquals(java.lang.StringBuffer)

    private static var contentEquals_MethodID_41: jmethodID?

    open func contentEquals( arg0: StringBuffer? ) -> Bool {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "contentEquals", methodSig: "(Ljava/lang/StringBuffer;)Z", methodCache: &JavaString.contentEquals_MethodID_41, args: &__args, locals: &__locals )
        return __return != jboolean(JNI_FALSE)
    }

    open func contentEquals( _ _arg0: StringBuffer? ) -> Bool {
        return contentEquals( arg0: _arg0 )
    }

    /// public boolean java.lang.String.endsWith(java.lang.String)

    private static var endsWith_MethodID_42: jmethodID?

    open func endsWith( arg0: String? ) -> Bool {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "endsWith", methodSig: "(Ljava/lang/String;)Z", methodCache: &JavaString.endsWith_MethodID_42, args: &__args, locals: &__locals )
        return __return != jboolean(JNI_FALSE)
    }

    open func endsWith( _ _arg0: String? ) -> Bool {
        return endsWith( arg0: _arg0 )
    }

    /// public boolean java.lang.String.equals(java.lang.Object)

    // Skipping method: false true false false false 

    /// public boolean java.lang.String.equalsIgnoreCase(java.lang.String)

    private static var equalsIgnoreCase_MethodID_43: jmethodID?

    open func equalsIgnoreCase( arg0: String? ) -> Bool {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "equalsIgnoreCase", methodSig: "(Ljava/lang/String;)Z", methodCache: &JavaString.equalsIgnoreCase_MethodID_43, args: &__args, locals: &__locals )
        return __return != jboolean(JNI_FALSE)
    }

    open func equalsIgnoreCase( _ _arg0: String? ) -> Bool {
        return equalsIgnoreCase( arg0: _arg0 )
    }

    /// public void java.lang.String.getBytes(int,int,byte[],int)

    private static var getBytes_MethodID_44: jmethodID?

    open func getBytes( arg0: Int, arg1: Int, arg2: [Int8]?, arg3: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 4 )
        __args[0] = jvalue( i: jint(arg0) )
        __args[1] = jvalue( i: jint(arg1) )
        __args[2] = JNIType.toJava( value: arg2, locals: &__locals )
        __args[3] = jvalue( i: jint(arg3) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "getBytes", methodSig: "(II[BI)V", methodCache: &JavaString.getBytes_MethodID_44, args: &__args, locals: &__locals )
    }

    open func getBytes( _ _arg0: Int, _ _arg1: Int, _ _arg2: [Int8]?, _ _arg3: Int ) {
        getBytes( arg0: _arg0, arg1: _arg1, arg2: _arg2, arg3: _arg3 )
    }

    /// public byte[] java.lang.String.getBytes(java.lang.String) throws java.io.UnsupportedEncodingException

    private static var getBytes_MethodID_45: jmethodID?

    open func getBytes( arg0: String? ) throws /* java.io.UnsupportedEncodingException */ -> [Int8]! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "getBytes", methodSig: "(Ljava/lang/String;)[B", methodCache: &JavaString.getBytes_MethodID_45, args: &__args, locals: &__locals )
        if let throwable = JNI.ExceptionCheck() {
            defer { JNI.DeleteLocalRef( throwable ) }
            throw /* class java.io.UnsupportedEncodingException */ UnavailableObject( javaObject: throwable )
        }
        return JNIType.toSwift( type: [Int8].self, from: __return )
    }

    open func getBytes( _ _arg0: String? ) throws /* java.io.UnsupportedEncodingException */ -> [Int8]! {
        return try getBytes( arg0: _arg0 )
    }

    /// public byte[] java.lang.String.getBytes(java.nio.charset.Charset)

    private static var getBytes_MethodID_46: jmethodID?

    open func getBytes( arg0: /* class java.nio.charset.Charset */ UnavailableObject? ) -> [Int8]! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "getBytes", methodSig: "(Ljava/nio/charset/Charset;)[B", methodCache: &JavaString.getBytes_MethodID_46, args: &__args, locals: &__locals )
        return JNIType.toSwift( type: [Int8].self, from: __return )
    }

    open func getBytes( _ _arg0: /* class java.nio.charset.Charset */ UnavailableObject? ) -> [Int8]! {
        return getBytes( arg0: _arg0 )
    }

    /// public byte[] java.lang.String.getBytes()

    private static var getBytes_MethodID_47: jmethodID?

    open func getBytes() -> [Int8]! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "getBytes", methodSig: "()[B", methodCache: &JavaString.getBytes_MethodID_47, args: &__args, locals: &__locals )
        return JNIType.toSwift( type: [Int8].self, from: __return )
    }


    /// public void java.lang.String.getChars(int,int,char[],int)

    private static var getChars_MethodID_48: jmethodID?

    open func getChars( arg0: Int, arg1: Int, arg2: [UInt16]?, arg3: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 4 )
        __args[0] = jvalue( i: jint(arg0) )
        __args[1] = jvalue( i: jint(arg1) )
        __args[2] = JNIType.toJava( value: arg2, locals: &__locals )
        __args[3] = jvalue( i: jint(arg3) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "getChars", methodSig: "(II[CI)V", methodCache: &JavaString.getChars_MethodID_48, args: &__args, locals: &__locals )
    }

    open func getChars( _ _arg0: Int, _ _arg1: Int, _ _arg2: [UInt16]?, _ _arg3: Int ) {
        getChars( arg0: _arg0, arg1: _arg1, arg2: _arg2, arg3: _arg3 )
    }

    /// void java.lang.String.getChars(char[],int)

    // Skipping method: true false false false false 

    /// public int java.lang.String.hashCode()

    // Skipping method: false true false false false 

    /// public int java.lang.String.indexOf(int)

    private static var indexOf_MethodID_49: jmethodID?

    open func indexOf( arg0: Int ) -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = jvalue( i: jint(arg0) )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "indexOf", methodSig: "(I)I", methodCache: &JavaString.indexOf_MethodID_49, args: &__args, locals: &__locals )
        return Int(__return)
    }

    open func indexOf( _ _arg0: Int ) -> Int {
        return indexOf( arg0: _arg0 )
    }

    /// public int java.lang.String.indexOf(int,int)

    private static var indexOf_MethodID_50: jmethodID?

    open func indexOf( arg0: Int, arg1: Int ) -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = jvalue( i: jint(arg0) )
        __args[1] = jvalue( i: jint(arg1) )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "indexOf", methodSig: "(II)I", methodCache: &JavaString.indexOf_MethodID_50, args: &__args, locals: &__locals )
        return Int(__return)
    }

    open func indexOf( _ _arg0: Int, _ _arg1: Int ) -> Int {
        return indexOf( arg0: _arg0, arg1: _arg1 )
    }

    /// public int java.lang.String.indexOf(java.lang.String)

    private static var indexOf_MethodID_51: jmethodID?

    open func indexOf( arg0: String? ) -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "indexOf", methodSig: "(Ljava/lang/String;)I", methodCache: &JavaString.indexOf_MethodID_51, args: &__args, locals: &__locals )
        return Int(__return)
    }

    open func indexOf( _ _arg0: String? ) -> Int {
        return indexOf( arg0: _arg0 )
    }

    /// public int java.lang.String.indexOf(java.lang.String,int)

    private static var indexOf_MethodID_52: jmethodID?

    open func indexOf( arg0: String?, arg1: Int ) -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = jvalue( i: jint(arg1) )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "indexOf", methodSig: "(Ljava/lang/String;I)I", methodCache: &JavaString.indexOf_MethodID_52, args: &__args, locals: &__locals )
        return Int(__return)
    }

    open func indexOf( _ _arg0: String?, _ _arg1: Int ) -> Int {
        return indexOf( arg0: _arg0, arg1: _arg1 )
    }

    /// private int java.lang.String.indexOfSupplementary(int,int)

    /// public native java.lang.String java.lang.String.intern()

    private static var intern_MethodID_53: jmethodID?

    open func intern() -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "intern", methodSig: "()Ljava/lang/String;", methodCache: &JavaString.intern_MethodID_53, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }


    /// public boolean java.lang.String.isEmpty()

    private static var isEmpty_MethodID_54: jmethodID?

    open func isEmpty() -> Bool {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "isEmpty", methodSig: "()Z", methodCache: &JavaString.isEmpty_MethodID_54, args: &__args, locals: &__locals )
        return __return != jboolean(JNI_FALSE)
    }


    /// public int java.lang.String.lastIndexOf(int)

    private static var lastIndexOf_MethodID_55: jmethodID?

    open func lastIndexOf( arg0: Int ) -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = jvalue( i: jint(arg0) )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "lastIndexOf", methodSig: "(I)I", methodCache: &JavaString.lastIndexOf_MethodID_55, args: &__args, locals: &__locals )
        return Int(__return)
    }

    open func lastIndexOf( _ _arg0: Int ) -> Int {
        return lastIndexOf( arg0: _arg0 )
    }

    /// public int java.lang.String.lastIndexOf(int,int)

    private static var lastIndexOf_MethodID_56: jmethodID?

    open func lastIndexOf( arg0: Int, arg1: Int ) -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = jvalue( i: jint(arg0) )
        __args[1] = jvalue( i: jint(arg1) )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "lastIndexOf", methodSig: "(II)I", methodCache: &JavaString.lastIndexOf_MethodID_56, args: &__args, locals: &__locals )
        return Int(__return)
    }

    open func lastIndexOf( _ _arg0: Int, _ _arg1: Int ) -> Int {
        return lastIndexOf( arg0: _arg0, arg1: _arg1 )
    }

    /// public int java.lang.String.lastIndexOf(java.lang.String)

    private static var lastIndexOf_MethodID_57: jmethodID?

    open func lastIndexOf( arg0: String? ) -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "lastIndexOf", methodSig: "(Ljava/lang/String;)I", methodCache: &JavaString.lastIndexOf_MethodID_57, args: &__args, locals: &__locals )
        return Int(__return)
    }

    open func lastIndexOf( _ _arg0: String? ) -> Int {
        return lastIndexOf( arg0: _arg0 )
    }

    /// public int java.lang.String.lastIndexOf(java.lang.String,int)

    private static var lastIndexOf_MethodID_58: jmethodID?

    open func lastIndexOf( arg0: String?, arg1: Int ) -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = jvalue( i: jint(arg1) )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "lastIndexOf", methodSig: "(Ljava/lang/String;I)I", methodCache: &JavaString.lastIndexOf_MethodID_58, args: &__args, locals: &__locals )
        return Int(__return)
    }

    open func lastIndexOf( _ _arg0: String?, _ _arg1: Int ) -> Int {
        return lastIndexOf( arg0: _arg0, arg1: _arg1 )
    }

    /// private int java.lang.String.lastIndexOfSupplementary(int,int)

    /// public int java.lang.String.length()

    private static var length_MethodID_59: jmethodID?

    open func length() -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "length", methodSig: "()I", methodCache: &JavaString.length_MethodID_59, args: &__args, locals: &__locals )
        return Int(__return)
    }


    /// public boolean java.lang.String.matches(java.lang.String)

    private static var matches_MethodID_60: jmethodID?

    open func matches( arg0: String? ) -> Bool {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "matches", methodSig: "(Ljava/lang/String;)Z", methodCache: &JavaString.matches_MethodID_60, args: &__args, locals: &__locals )
        return __return != jboolean(JNI_FALSE)
    }

    open func matches( _ _arg0: String? ) -> Bool {
        return matches( arg0: _arg0 )
    }

    /// private boolean java.lang.String.nonSyncContentEquals(java.lang.AbstractStringBuilder)

    /// public int java.lang.String.offsetByCodePoints(int,int)

    private static var offsetByCodePoints_MethodID_61: jmethodID?

    open func offsetByCodePoints( arg0: Int, arg1: Int ) -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = jvalue( i: jint(arg0) )
        __args[1] = jvalue( i: jint(arg1) )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "offsetByCodePoints", methodSig: "(II)I", methodCache: &JavaString.offsetByCodePoints_MethodID_61, args: &__args, locals: &__locals )
        return Int(__return)
    }

    open func offsetByCodePoints( _ _arg0: Int, _ _arg1: Int ) -> Int {
        return offsetByCodePoints( arg0: _arg0, arg1: _arg1 )
    }

    /// public boolean java.lang.String.regionMatches(boolean,int,java.lang.String,int,int)

    private static var regionMatches_MethodID_62: jmethodID?

    open func regionMatches( arg0: Bool, arg1: Int, arg2: String?, arg3: Int, arg4: Int ) -> Bool {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 5 )
        __args[0] = jvalue( z: jboolean(arg0 ? JNI_TRUE : JNI_FALSE) )
        __args[1] = jvalue( i: jint(arg1) )
        __args[2] = JNIType.toJava( value: arg2, locals: &__locals )
        __args[3] = jvalue( i: jint(arg3) )
        __args[4] = jvalue( i: jint(arg4) )
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "regionMatches", methodSig: "(ZILjava/lang/String;II)Z", methodCache: &JavaString.regionMatches_MethodID_62, args: &__args, locals: &__locals )
        return __return != jboolean(JNI_FALSE)
    }

    open func regionMatches( _ _arg0: Bool, _ _arg1: Int, _ _arg2: String?, _ _arg3: Int, _ _arg4: Int ) -> Bool {
        return regionMatches( arg0: _arg0, arg1: _arg1, arg2: _arg2, arg3: _arg3, arg4: _arg4 )
    }

    /// public boolean java.lang.String.regionMatches(int,java.lang.String,int,int)

    private static var regionMatches_MethodID_63: jmethodID?

    open func regionMatches( arg0: Int, arg1: String?, arg2: Int, arg3: Int ) -> Bool {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 4 )
        __args[0] = jvalue( i: jint(arg0) )
        __args[1] = JNIType.toJava( value: arg1, locals: &__locals )
        __args[2] = jvalue( i: jint(arg2) )
        __args[3] = jvalue( i: jint(arg3) )
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "regionMatches", methodSig: "(ILjava/lang/String;II)Z", methodCache: &JavaString.regionMatches_MethodID_63, args: &__args, locals: &__locals )
        return __return != jboolean(JNI_FALSE)
    }

    open func regionMatches( _ _arg0: Int, _ _arg1: String?, _ _arg2: Int, _ _arg3: Int ) -> Bool {
        return regionMatches( arg0: _arg0, arg1: _arg1, arg2: _arg2, arg3: _arg3 )
    }

    /// public java.lang.String java.lang.String.replace(java.lang.CharSequence,java.lang.CharSequence)

    private static var replace_MethodID_64: jmethodID?

    open func replace( arg0: CharSequence?, arg1: CharSequence? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "replace", methodSig: "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;", methodCache: &JavaString.replace_MethodID_64, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open func replace( _ _arg0: CharSequence?, _ _arg1: CharSequence? ) -> String! {
        return replace( arg0: _arg0, arg1: _arg1 )
    }

    /// public java.lang.String java.lang.String.replace(char,char)

    private static var replace_MethodID_65: jmethodID?

    open func replace( arg0: UInt16, arg1: UInt16 ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = jvalue( c: arg0 )
        __args[1] = jvalue( c: arg1 )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "replace", methodSig: "(CC)Ljava/lang/String;", methodCache: &JavaString.replace_MethodID_65, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open func replace( _ _arg0: UInt16, _ _arg1: UInt16 ) -> String! {
        return replace( arg0: _arg0, arg1: _arg1 )
    }

    /// public java.lang.String java.lang.String.replaceAll(java.lang.String,java.lang.String)

    private static var replaceAll_MethodID_66: jmethodID?

    open func replaceAll( arg0: String?, arg1: String? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "replaceAll", methodSig: "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", methodCache: &JavaString.replaceAll_MethodID_66, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open func replaceAll( _ _arg0: String?, _ _arg1: String? ) -> String! {
        return replaceAll( arg0: _arg0, arg1: _arg1 )
    }

    /// public java.lang.String java.lang.String.replaceFirst(java.lang.String,java.lang.String)

    private static var replaceFirst_MethodID_67: jmethodID?

    open func replaceFirst( arg0: String?, arg1: String? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "replaceFirst", methodSig: "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", methodCache: &JavaString.replaceFirst_MethodID_67, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open func replaceFirst( _ _arg0: String?, _ _arg1: String? ) -> String! {
        return replaceFirst( arg0: _arg0, arg1: _arg1 )
    }

    /// public java.lang.String[] java.lang.String.split(java.lang.String)

    private static var split_MethodID_68: jmethodID?

    open func split( arg0: String? ) -> [String]! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "split", methodSig: "(Ljava/lang/String;)[Ljava/lang/String;", methodCache: &JavaString.split_MethodID_68, args: &__args, locals: &__locals )
        return JNIType.toSwift( type: [String].self, from: __return )
    }

    open func split( _ _arg0: String? ) -> [String]! {
        return split( arg0: _arg0 )
    }

    /// public java.lang.String[] java.lang.String.split(java.lang.String,int)

    private static var split_MethodID_69: jmethodID?

    open func split( arg0: String?, arg1: Int ) -> [String]! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = jvalue( i: jint(arg1) )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "split", methodSig: "(Ljava/lang/String;I)[Ljava/lang/String;", methodCache: &JavaString.split_MethodID_69, args: &__args, locals: &__locals )
        return JNIType.toSwift( type: [String].self, from: __return )
    }

    open func split( _ _arg0: String?, _ _arg1: Int ) -> [String]! {
        return split( arg0: _arg0, arg1: _arg1 )
    }

    /// public boolean java.lang.String.startsWith(java.lang.String)

    private static var startsWith_MethodID_70: jmethodID?

    open func startsWith( arg0: String? ) -> Bool {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "startsWith", methodSig: "(Ljava/lang/String;)Z", methodCache: &JavaString.startsWith_MethodID_70, args: &__args, locals: &__locals )
        return __return != jboolean(JNI_FALSE)
    }

    open func startsWith( _ _arg0: String? ) -> Bool {
        return startsWith( arg0: _arg0 )
    }

    /// public boolean java.lang.String.startsWith(java.lang.String,int)

    private static var startsWith_MethodID_71: jmethodID?

    open func startsWith( arg0: String?, arg1: Int ) -> Bool {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = jvalue( i: jint(arg1) )
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "startsWith", methodSig: "(Ljava/lang/String;I)Z", methodCache: &JavaString.startsWith_MethodID_71, args: &__args, locals: &__locals )
        return __return != jboolean(JNI_FALSE)
    }

    open func startsWith( _ _arg0: String?, _ _arg1: Int ) -> Bool {
        return startsWith( arg0: _arg0, arg1: _arg1 )
    }

    /// public java.lang.CharSequence java.lang.String.subSequence(int,int)

    private static var subSequence_MethodID_72: jmethodID?

    open func subSequence( arg0: Int, arg1: Int ) -> CharSequence! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = jvalue( i: jint(arg0) )
        __args[1] = jvalue( i: jint(arg1) )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "subSequence", methodSig: "(II)Ljava/lang/CharSequence;", methodCache: &JavaString.subSequence_MethodID_72, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? CharSequenceForward( javaObject: __return ) : nil
    }

    open func subSequence( _ _arg0: Int, _ _arg1: Int ) -> CharSequence! {
        return subSequence( arg0: _arg0, arg1: _arg1 )
    }

    /// public java.lang.String java.lang.String.substring(int)

    private static var substring_MethodID_73: jmethodID?

    open func substring( arg0: Int ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = jvalue( i: jint(arg0) )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "substring", methodSig: "(I)Ljava/lang/String;", methodCache: &JavaString.substring_MethodID_73, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open func substring( _ _arg0: Int ) -> String! {
        return substring( arg0: _arg0 )
    }

    /// public java.lang.String java.lang.String.substring(int,int)

    private static var substring_MethodID_74: jmethodID?

    open func substring( arg0: Int, arg1: Int ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = jvalue( i: jint(arg0) )
        __args[1] = jvalue( i: jint(arg1) )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "substring", methodSig: "(II)Ljava/lang/String;", methodCache: &JavaString.substring_MethodID_74, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open func substring( _ _arg0: Int, _ _arg1: Int ) -> String! {
        return substring( arg0: _arg0, arg1: _arg1 )
    }

    /// public char[] java.lang.String.toCharArray()

    private static var toCharArray_MethodID_75: jmethodID?

    open func toCharArray() -> [UInt16]! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "toCharArray", methodSig: "()[C", methodCache: &JavaString.toCharArray_MethodID_75, args: &__args, locals: &__locals )
        return JNIType.toSwift( type: [UInt16].self, from: __return )
    }


    /// public java.lang.String java.lang.String.toLowerCase(java.util.Locale)

    private static var toLowerCase_MethodID_76: jmethodID?

    open func toLowerCase( arg0: /* class java.util.Locale */ UnavailableObject? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "toLowerCase", methodSig: "(Ljava/util/Locale;)Ljava/lang/String;", methodCache: &JavaString.toLowerCase_MethodID_76, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open func toLowerCase( _ _arg0: /* class java.util.Locale */ UnavailableObject? ) -> String! {
        return toLowerCase( arg0: _arg0 )
    }

    /// public java.lang.String java.lang.String.toLowerCase()

    private static var toLowerCase_MethodID_77: jmethodID?

    open func toLowerCase() -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "toLowerCase", methodSig: "()Ljava/lang/String;", methodCache: &JavaString.toLowerCase_MethodID_77, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }


    /// public java.lang.String java.lang.String.toString()

    // Skipping method: false true false false false 

    /// public java.lang.String java.lang.String.toUpperCase(java.util.Locale)

    private static var toUpperCase_MethodID_78: jmethodID?

    open func toUpperCase( arg0: /* class java.util.Locale */ UnavailableObject? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "toUpperCase", methodSig: "(Ljava/util/Locale;)Ljava/lang/String;", methodCache: &JavaString.toUpperCase_MethodID_78, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open func toUpperCase( _ _arg0: /* class java.util.Locale */ UnavailableObject? ) -> String! {
        return toUpperCase( arg0: _arg0 )
    }

    /// public java.lang.String java.lang.String.toUpperCase()

    private static var toUpperCase_MethodID_79: jmethodID?

    open func toUpperCase() -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "toUpperCase", methodSig: "()Ljava/lang/String;", methodCache: &JavaString.toUpperCase_MethodID_79, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }


    /// public java.lang.String java.lang.String.trim()

    private static var trim_MethodID_80: jmethodID?

    open func trim() -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "trim", methodSig: "()Ljava/lang/String;", methodCache: &JavaString.trim_MethodID_80, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }


    /// In declared protocol but not defined.. ///

    /// public default java.util.stream.IntStream java.lang.CharSequence.chars()

    private static var chars_MethodID_81: jmethodID?

    open func chars() -> /* interface java.util.stream.IntStream */ UnavailableProtocol! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "chars", methodSig: "()Ljava/util/stream/IntStream;", methodCache: &JavaString.chars_MethodID_81, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? /* interface java.util.stream.IntStream */ UnavailableProtocolForward( javaObject: __return ) : nil
    }


    /// public default java.util.stream.IntStream java.lang.CharSequence.codePoints()

    private static var codePoints_MethodID_82: jmethodID?

    open func codePoints() -> /* interface java.util.stream.IntStream */ UnavailableProtocol! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "codePoints", methodSig: "()Ljava/util/stream/IntStream;", methodCache: &JavaString.codePoints_MethodID_82, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? /* interface java.util.stream.IntStream */ UnavailableProtocolForward( javaObject: __return ) : nil
    }


    /// public abstract java.lang.String java.lang.CharSequence.toString()

    // Skipping method: false true false false false 

}


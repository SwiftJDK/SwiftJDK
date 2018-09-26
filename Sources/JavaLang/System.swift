



/// class java.lang.System ///

open class System: java_swift.JavaObject {

    

    private static var SystemJNIClass: jclass?

    /// private static volatile java.io.Console java.lang.System.cons

    /// public static final java.io.PrintStream java.lang.System.err

    private static var err_FieldID: jfieldID?

    open static var err: /* class java.io.PrintStream */ UnavailableObject! {
        get {
            let __value = JNIField.GetStaticObjectField( fieldName: "err", fieldType: "Ljava/io/PrintStream;", fieldCache: &err_FieldID, className: "java/lang/System", classCache: &SystemJNIClass )
            defer { JNI.DeleteLocalRef( __value ) }
            return __value != nil ? /* class java.io.PrintStream */ UnavailableObject( javaObject: __value ) : nil
        }
    }

    /// public static final java.io.InputStream java.lang.System.in

    private static var _in_FieldID: jfieldID?

    open static var _in: /* class java.io.InputStream */ UnavailableObject! {
        get {
            let __value = JNIField.GetStaticObjectField( fieldName: "in", fieldType: "Ljava/io/InputStream;", fieldCache: &_in_FieldID, className: "java/lang/System", classCache: &SystemJNIClass )
            defer { JNI.DeleteLocalRef( __value ) }
            return __value != nil ? /* class java.io.InputStream */ UnavailableObject( javaObject: __value ) : nil
        }
    }

    /// private static java.lang.String java.lang.System.lineSeparator

    /// public static final java.io.PrintStream java.lang.System.out

    private static var out_FieldID: jfieldID?

    open static var out: /* class java.io.PrintStream */ UnavailableObject! {
        get {
            let __value = JNIField.GetStaticObjectField( fieldName: "out", fieldType: "Ljava/io/PrintStream;", fieldCache: &out_FieldID, className: "java/lang/System", classCache: &SystemJNIClass )
            defer { JNI.DeleteLocalRef( __value ) }
            return __value != nil ? /* class java.io.PrintStream */ UnavailableObject( javaObject: __value ) : nil
        }
    }

    /// private static java.util.Properties java.lang.System.props

    /// private java.lang.System()

    /// public static native void java.lang.System.arraycopy(java.lang.Object,int,java.lang.Object,int,int)

    private static var arraycopy_MethodID_1: jmethodID?

    open class func arraycopy( arg0: java_swift.JavaObject?, arg1: Int, arg2: java_swift.JavaObject?, arg3: Int, arg4: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 5 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = jvalue( i: jint(arg1) )
        __args[2] = JNIType.toJava( value: arg2, locals: &__locals )
        __args[3] = jvalue( i: jint(arg3) )
        __args[4] = jvalue( i: jint(arg4) )
        JNIMethod.CallStaticVoidMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "arraycopy", methodSig: "(Ljava/lang/Object;ILjava/lang/Object;II)V", methodCache: &arraycopy_MethodID_1, args: &__args, locals: &__locals )
    }

    open class func arraycopy( _ _arg0: java_swift.JavaObject?, _ _arg1: Int, _ _arg2: java_swift.JavaObject?, _ _arg3: Int, _ _arg4: Int ) {
        arraycopy( arg0: _arg0, arg1: _arg1, arg2: _arg2, arg3: _arg3, arg4: _arg4 )
    }

    /// private static void java.lang.System.checkIO()

    /// private static void java.lang.System.checkKey(java.lang.String)

    /// public static java.lang.String java.lang.System.clearProperty(java.lang.String)

    private static var clearProperty_MethodID_2: jmethodID?

    open class func clearProperty( arg0: String? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "clearProperty", methodSig: "(Ljava/lang/String;)Ljava/lang/String;", methodCache: &clearProperty_MethodID_2, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func clearProperty( _ _arg0: String? ) -> String! {
        return clearProperty( arg0: _arg0 )
    }

    /// public static java.io.Console java.lang.System.console()

    private static var console_MethodID_3: jmethodID?

    open class func console() -> /* class java.io.Console */ UnavailableObject! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "console", methodSig: "()Ljava/io/Console;", methodCache: &console_MethodID_3, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? /* class java.io.Console */ UnavailableObject( javaObject: __return ) : nil
    }


    /// public static native long java.lang.System.currentTimeMillis()

    private static var currentTimeMillis_MethodID_4: jmethodID?

    open class func currentTimeMillis() -> Int64 {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallStaticLongMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "currentTimeMillis", methodSig: "()J", methodCache: &currentTimeMillis_MethodID_4, args: &__args, locals: &__locals )
        return __return
    }


    /// public static void java.lang.System.exit(int)

    private static var exit_MethodID_5: jmethodID?

    open class func exit( arg0: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = jvalue( i: jint(arg0) )
        JNIMethod.CallStaticVoidMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "exit", methodSig: "(I)V", methodCache: &exit_MethodID_5, args: &__args, locals: &__locals )
    }

    open class func exit( _ _arg0: Int ) {
        exit( arg0: _arg0 )
    }

    /// public static void java.lang.System.gc()

    private static var gc_MethodID_6: jmethodID?

    open class func gc() {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        JNIMethod.CallStaticVoidMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "gc", methodSig: "()V", methodCache: &gc_MethodID_6, args: &__args, locals: &__locals )
    }


    /// public static java.util.Properties java.lang.System.getProperties()

    private static var getProperties_MethodID_7: jmethodID?

    open class func getProperties() -> /* class java.util.Properties */ UnavailableObject! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "getProperties", methodSig: "()Ljava/util/Properties;", methodCache: &getProperties_MethodID_7, args: &__args, locals: &__locals )
        return JNIType.toSwift( type: /* class java.util.Properties */ UnavailableObject.self, from: __return )
    }


    /// public static java.lang.String java.lang.System.getProperty(java.lang.String)

    private static var getProperty_MethodID_8: jmethodID?

    open class func getProperty( arg0: String? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "getProperty", methodSig: "(Ljava/lang/String;)Ljava/lang/String;", methodCache: &getProperty_MethodID_8, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func getProperty( _ _arg0: String? ) -> String! {
        return getProperty( arg0: _arg0 )
    }

    /// public static java.lang.String java.lang.System.getProperty(java.lang.String,java.lang.String)

    private static var getProperty_MethodID_9: jmethodID?

    open class func getProperty( arg0: String?, arg1: String? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1, locals: &__locals )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "getProperty", methodSig: "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", methodCache: &getProperty_MethodID_9, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func getProperty( _ _arg0: String?, _ _arg1: String? ) -> String! {
        return getProperty( arg0: _arg0, arg1: _arg1 )
    }

    /// public static java.lang.SecurityManager java.lang.System.getSecurityManager()

    private static var getSecurityManager_MethodID_10: jmethodID?

    open class func getSecurityManager() -> SecurityManager! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "getSecurityManager", methodSig: "()Ljava/lang/SecurityManager;", methodCache: &getSecurityManager_MethodID_10, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? SecurityManager( javaObject: __return ) : nil
    }


    /// public static java.lang.String java.lang.System.getenv(java.lang.String)

    private static var getenv_MethodID_11: jmethodID?

    open class func getenv( arg0: String? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "getenv", methodSig: "(Ljava/lang/String;)Ljava/lang/String;", methodCache: &getenv_MethodID_11, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func getenv( _ _arg0: String? ) -> String! {
        return getenv( arg0: _arg0 )
    }

    /// public static java.util.Map java.lang.System.getenv()

    private static var getenv_MethodID_12: jmethodID?

    open class func getenv() -> java_swift.JavaMap! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "getenv", methodSig: "()Ljava/util/Map;", methodCache: &getenv_MethodID_12, args: &__args, locals: &__locals )
        return JNIType.toSwift( type: java_swift.JavaMapForward.self, from: __return )
    }


    /// public static native int java.lang.System.identityHashCode(java.lang.Object)

    private static var identityHashCode_MethodID_13: jmethodID?

    open class func identityHashCode( arg0: java_swift.JavaObject? ) -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallStaticIntMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "identityHashCode", methodSig: "(Ljava/lang/Object;)I", methodCache: &identityHashCode_MethodID_13, args: &__args, locals: &__locals )
        return Int(__return)
    }

    open class func identityHashCode( _ _arg0: java_swift.JavaObject? ) -> Int {
        return identityHashCode( arg0: _arg0 )
    }

    /// public static java.nio.channels.Channel java.lang.System.inheritedChannel() throws java.io.IOException

    private static var inheritedChannel_MethodID_14: jmethodID?

    open class func inheritedChannel() throws /* java.io.IOException */ -> /* interface java.nio.channels.Channel */ UnavailableProtocol! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "inheritedChannel", methodSig: "()Ljava/nio/channels/Channel;", methodCache: &inheritedChannel_MethodID_14, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        if let throwable = JNI.ExceptionCheck() {
            defer { JNI.DeleteLocalRef( throwable ) }
            throw /* class java.io.IOException */ UnavailableObject( javaObject: throwable )
        }
        return __return != nil ? /* interface java.nio.channels.Channel */ UnavailableProtocolForward( javaObject: __return ) : nil
    }


    /// private static native java.util.Properties java.lang.System.initProperties(java.util.Properties)

    /// private static void java.lang.System.initializeSystemClass()

    /// public static java.lang.String java.lang.System.lineSeparator()

    private static var lineSeparator_MethodID_15: jmethodID?

    open class func lineSeparator() -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "lineSeparator", methodSig: "()Ljava/lang/String;", methodCache: &lineSeparator_MethodID_15, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }


    /// public static void java.lang.System.load(java.lang.String)

    private static var load_MethodID_16: jmethodID?

    open class func load( arg0: String? ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        JNIMethod.CallStaticVoidMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "load", methodSig: "(Ljava/lang/String;)V", methodCache: &load_MethodID_16, args: &__args, locals: &__locals )
    }

    open class func load( _ _arg0: String? ) {
        load( arg0: _arg0 )
    }

    /// public static void java.lang.System.loadLibrary(java.lang.String)

    private static var loadLibrary_MethodID_17: jmethodID?

    open class func loadLibrary( arg0: String? ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        JNIMethod.CallStaticVoidMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "loadLibrary", methodSig: "(Ljava/lang/String;)V", methodCache: &loadLibrary_MethodID_17, args: &__args, locals: &__locals )
    }

    open class func loadLibrary( _ _arg0: String? ) {
        loadLibrary( arg0: _arg0 )
    }

    /// public static native java.lang.String java.lang.System.mapLibraryName(java.lang.String)

    private static var mapLibraryName_MethodID_18: jmethodID?

    open class func mapLibraryName( arg0: String? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "mapLibraryName", methodSig: "(Ljava/lang/String;)Ljava/lang/String;", methodCache: &mapLibraryName_MethodID_18, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func mapLibraryName( _ _arg0: String? ) -> String! {
        return mapLibraryName( arg0: _arg0 )
    }

    /// public static native long java.lang.System.nanoTime()

    private static var nanoTime_MethodID_19: jmethodID?

    open class func nanoTime() -> Int64 {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallStaticLongMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "nanoTime", methodSig: "()J", methodCache: &nanoTime_MethodID_19, args: &__args, locals: &__locals )
        return __return
    }


    /// private static java.io.PrintStream java.lang.System.newPrintStream(java.io.FileOutputStream,java.lang.String)

    /// private static native void java.lang.System.registerNatives()

    /// public static void java.lang.System.runFinalization()

    private static var runFinalization_MethodID_20: jmethodID?

    open class func runFinalization() {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        JNIMethod.CallStaticVoidMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "runFinalization", methodSig: "()V", methodCache: &runFinalization_MethodID_20, args: &__args, locals: &__locals )
    }


    /// public static void java.lang.System.runFinalizersOnExit(boolean)

    private static var runFinalizersOnExit_MethodID_21: jmethodID?

    open class func runFinalizersOnExit( arg0: Bool ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = jvalue( z: jboolean(arg0 ? JNI_TRUE : JNI_FALSE) )
        JNIMethod.CallStaticVoidMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "runFinalizersOnExit", methodSig: "(Z)V", methodCache: &runFinalizersOnExit_MethodID_21, args: &__args, locals: &__locals )
    }

    open class func runFinalizersOnExit( _ _arg0: Bool ) {
        runFinalizersOnExit( arg0: _arg0 )
    }

    /// public static void java.lang.System.setErr(java.io.PrintStream)

    private static var setErr_MethodID_22: jmethodID?

    open class func setErr( arg0: /* class java.io.PrintStream */ UnavailableObject? ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        JNIMethod.CallStaticVoidMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "setErr", methodSig: "(Ljava/io/PrintStream;)V", methodCache: &setErr_MethodID_22, args: &__args, locals: &__locals )
    }

    open class func setErr( _ _arg0: /* class java.io.PrintStream */ UnavailableObject? ) {
        setErr( arg0: _arg0 )
    }

    /// private static native void java.lang.System.setErr0(java.io.PrintStream)

    /// public static void java.lang.System.setIn(java.io.InputStream)

    private static var setIn_MethodID_23: jmethodID?

    open class func setIn( arg0: /* class java.io.InputStream */ UnavailableObject? ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        JNIMethod.CallStaticVoidMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "setIn", methodSig: "(Ljava/io/InputStream;)V", methodCache: &setIn_MethodID_23, args: &__args, locals: &__locals )
    }

    open class func setIn( _ _arg0: /* class java.io.InputStream */ UnavailableObject? ) {
        setIn( arg0: _arg0 )
    }

    /// private static native void java.lang.System.setIn0(java.io.InputStream)

    /// private static void java.lang.System.setJavaLangAccess()

    /// public static void java.lang.System.setOut(java.io.PrintStream)

    private static var setOut_MethodID_24: jmethodID?

    open class func setOut( arg0: /* class java.io.PrintStream */ UnavailableObject? ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        JNIMethod.CallStaticVoidMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "setOut", methodSig: "(Ljava/io/PrintStream;)V", methodCache: &setOut_MethodID_24, args: &__args, locals: &__locals )
    }

    open class func setOut( _ _arg0: /* class java.io.PrintStream */ UnavailableObject? ) {
        setOut( arg0: _arg0 )
    }

    /// private static native void java.lang.System.setOut0(java.io.PrintStream)

    /// public static void java.lang.System.setProperties(java.util.Properties)

    private static var setProperties_MethodID_25: jmethodID?

    open class func setProperties( arg0: /* class java.util.Properties */ UnavailableObject? ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, mapClass: "java/util/Properties", locals: &__locals )
        JNIMethod.CallStaticVoidMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "setProperties", methodSig: "(Ljava/util/Properties;)V", methodCache: &setProperties_MethodID_25, args: &__args, locals: &__locals )
    }

    open class func setProperties( _ _arg0: /* class java.util.Properties */ UnavailableObject? ) {
        setProperties( arg0: _arg0 )
    }

    /// public static java.lang.String java.lang.System.setProperty(java.lang.String,java.lang.String)

    private static var setProperty_MethodID_26: jmethodID?

    open class func setProperty( arg0: String?, arg1: String? ) -> String! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1, locals: &__locals )
        let __return = JNIMethod.CallStaticObjectMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "setProperty", methodSig: "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", methodCache: &setProperty_MethodID_26, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? String( javaObject: __return ) : nil
    }

    open class func setProperty( _ _arg0: String?, _ _arg1: String? ) -> String! {
        return setProperty( arg0: _arg0, arg1: _arg1 )
    }

    /// public static void java.lang.System.setSecurityManager(java.lang.SecurityManager)

    private static var setSecurityManager_MethodID_27: jmethodID?

    open class func setSecurityManager( arg0: SecurityManager? ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: arg0, locals: &__locals )
        JNIMethod.CallStaticVoidMethod( className: "java/lang/System", classCache: &SystemJNIClass, methodName: "setSecurityManager", methodSig: "(Ljava/lang/SecurityManager;)V", methodCache: &setSecurityManager_MethodID_27, args: &__args, locals: &__locals )
    }

    open class func setSecurityManager( _ _arg0: SecurityManager? ) {
        setSecurityManager( arg0: _arg0 )
    }

    /// private static synchronized void java.lang.System.setSecurityManager0(java.lang.SecurityManager)

}


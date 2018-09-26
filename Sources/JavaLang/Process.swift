



/// class java.lang.Process ///

open class Process: java_swift.JavaObject {

    

    private static var ProcessJNIClass: jclass?

    /// public java.lang.Process()

    private static var new_MethodID_1: jmethodID?

    public convenience init() {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __object = JNIMethod.NewObject( className: "java/lang/Process", classCache: &Process.ProcessJNIClass, methodSig: "()V", methodCache: &Process.new_MethodID_1, args: &__args, locals: &__locals )
        self.init( javaObject: __object )
        JNI.DeleteLocalRef( __object )
    }

    /// public abstract void java.lang.Process.destroy()

    private static var destroy_MethodID_2: jmethodID?

    open func destroy() {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "destroy", methodSig: "()V", methodCache: &Process.destroy_MethodID_2, args: &__args, locals: &__locals )
    }


    /// public java.lang.Process java.lang.Process.destroyForcibly()

    private static var destroyForcibly_MethodID_3: jmethodID?

    open func destroyForcibly() -> Process! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "destroyForcibly", methodSig: "()Ljava/lang/Process;", methodCache: &Process.destroyForcibly_MethodID_3, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? Process( javaObject: __return ) : nil
    }


    /// public abstract int java.lang.Process.exitValue()

    private static var exitValue_MethodID_4: jmethodID?

    open func exitValue() -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "exitValue", methodSig: "()I", methodCache: &Process.exitValue_MethodID_4, args: &__args, locals: &__locals )
        return Int(__return)
    }


    /// public abstract java.io.InputStream java.lang.Process.getErrorStream()

    private static var getErrorStream_MethodID_5: jmethodID?

    open func getErrorStream() -> /* class java.io.InputStream */ UnavailableObject! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "getErrorStream", methodSig: "()Ljava/io/InputStream;", methodCache: &Process.getErrorStream_MethodID_5, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? /* class java.io.InputStream */ UnavailableObject( javaObject: __return ) : nil
    }


    /// public abstract java.io.InputStream java.lang.Process.getInputStream()

    private static var getInputStream_MethodID_6: jmethodID?

    open func getInputStream() -> /* class java.io.InputStream */ UnavailableObject! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "getInputStream", methodSig: "()Ljava/io/InputStream;", methodCache: &Process.getInputStream_MethodID_6, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? /* class java.io.InputStream */ UnavailableObject( javaObject: __return ) : nil
    }


    /// public abstract java.io.OutputStream java.lang.Process.getOutputStream()

    private static var getOutputStream_MethodID_7: jmethodID?

    open func getOutputStream() -> /* class java.io.OutputStream */ UnavailableObject! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "getOutputStream", methodSig: "()Ljava/io/OutputStream;", methodCache: &Process.getOutputStream_MethodID_7, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? /* class java.io.OutputStream */ UnavailableObject( javaObject: __return ) : nil
    }


    /// public boolean java.lang.Process.isAlive()

    private static var isAlive_MethodID_8: jmethodID?

    open func isAlive() -> Bool {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "isAlive", methodSig: "()Z", methodCache: &Process.isAlive_MethodID_8, args: &__args, locals: &__locals )
        return __return != jboolean(JNI_FALSE)
    }


    /// public boolean java.lang.Process.waitFor(long,java.util.concurrent.TimeUnit) throws java.lang.InterruptedException

    private static var waitFor_MethodID_9: jmethodID?

    open func waitFor( timeout: Int64, unit: /* class java.util.concurrent.TimeUnit */ UnavailableEnum? ) throws /* java.lang.InterruptedException */ -> Bool {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = jvalue( j: timeout )
        __args[1] = JNIType.toJava( value: unit, locals: &__locals )
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "waitFor", methodSig: "(JLjava/util/concurrent/TimeUnit;)Z", methodCache: &Process.waitFor_MethodID_9, args: &__args, locals: &__locals )
        if let throwable = JNI.ExceptionCheck() {
            defer { JNI.DeleteLocalRef( throwable ) }
            throw InterruptedException( javaObject: throwable )
        }
        return __return != jboolean(JNI_FALSE)
    }

    open func waitFor( _ _timeout: Int64, _ _unit: /* class java.util.concurrent.TimeUnit */ UnavailableEnum? ) throws /* java.lang.InterruptedException */ -> Bool {
        return try waitFor( timeout: _timeout, unit: _unit )
    }

    /// public abstract int java.lang.Process.waitFor() throws java.lang.InterruptedException

    private static var waitFor_MethodID_10: jmethodID?

    open func waitFor() throws /* java.lang.InterruptedException */ -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "waitFor", methodSig: "()I", methodCache: &Process.waitFor_MethodID_10, args: &__args, locals: &__locals )
        if let throwable = JNI.ExceptionCheck() {
            defer { JNI.DeleteLocalRef( throwable ) }
            throw InterruptedException( javaObject: throwable )
        }
        return Int(__return)
    }


}


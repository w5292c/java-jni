public class HelloJNI {
  static {
//    System.setProperty("java.library.path", "/home/alex/projects/github/java-jni");
    System.loadLibrary("hello");
  }

  private native void sayHello();

  public static void main(String[] args) {
    new HelloJNI().sayHello();
  }
}

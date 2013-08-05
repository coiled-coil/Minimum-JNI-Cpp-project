class Main
{
    public static void main(String[] argv)
    {
        doNothing();
    }

    private static native void doNothing();

    static {
        System.loadLibrary("HelloJNI");
    }
}

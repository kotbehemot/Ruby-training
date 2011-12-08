public class Main {
  public static
    void main (String args[]) {
    double x = 1.5 + Two.two();
    System.out.println(x);
  }
}

public class Two {
  public static int two() {
    return 2;
  }
}

// Output

// 3.5
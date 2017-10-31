package com.example.a;

import org.checkerframework.checker.guieffect.qual.UIType;

import com.example.b.C;
import com.example.b.B;

@UIType
public class A extends B {

  public A() {}

  public static void bar(final C c) {
  }

  protected void foo() {

    bar(this);
  }
}

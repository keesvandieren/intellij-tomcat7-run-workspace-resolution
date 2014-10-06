package com.squins.common;

public class CommonClass {

    public static String returnSomething() {
        return "Something d";
    }

    public static String getClassResourceUri() {
        Class klass = CommonClass.class;
        return klass.getResource('/' + klass.getName().replace('.', '/') + ".class").toString();

    }
}

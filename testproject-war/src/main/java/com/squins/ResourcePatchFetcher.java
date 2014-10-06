package com.squins;

public class ResourcePatchFetcher {
    public static String fetchCommonResourceUri() {
        try {
            return ResourcePatchFetcher.class.getResource("/common-resource.txt").toURI().toString();
        } catch (Exception e) {
            throw new RuntimeException("Failed to fetch resource", e);
        }
    }
}

package com.squins;

import org.apache.commons.io.IOUtils;

import java.io.InputStream;

public class ResourcePatchFetcher {
    public static String fetchCommonResourceUri() {
        try {
            return ResourcePatchFetcher.class.getResource("/common-resource.txt").toURI().toString();
        } catch (Exception e) {
            throw new RuntimeException("Failed to fetch resource", e);
        }
    }


    public static String fetchResourceContents() {
        try(InputStream contentStream = ResourcePatchFetcher.class.getResourceAsStream("/common-resource.txt")) {
            return IOUtils.toString(contentStream);
        } catch (Exception e) {
            throw new RuntimeException("Failed to fetch resource", e);
        }
    }
}

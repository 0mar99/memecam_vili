.class public interface abstract Lcom/xiaomi/renderengine/RenderEngine$StateCallback;
.super Ljava/lang/Object;
.source "RenderEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/renderengine/RenderEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateCallback"
.end annotation


# virtual methods
.method public abstract onFrameAvailable()V
.end method

.method public abstract onFrameDrawn()V
.end method

.method public abstract onPreviewPixelsRead([BIII)V
.end method

.method public abstract onSurfaceChanged(Landroid/graphics/SurfaceTexture;II)V
.end method

.method public abstract onSurfaceCreated()V
.end method

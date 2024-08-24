.class public interface abstract Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;
.super Ljava/lang/Object;
.source "RenderEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/renderengine/RenderEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExternalRenderer"
.end annotation


# virtual methods
.method public abstract isNeedCopyPreview()Z
.end method

.method public abstract isProcessorReady()Z
.end method

.method public abstract onDrawFrame(IIZ)Z
.end method

.method public abstract prepareProcessor()V
.end method

.method public abstract releaseRenderer()V
.end method

.class public interface abstract Lcom/xiaomi/camera/MIVICaptureManager$FinalPictureListener;
.super Ljava/lang/Object;
.source "MIVICaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/MIVICaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FinalPictureListener"
.end annotation


# virtual methods
.method public abstract onCaptureCompleted()V
.end method

.method public abstract onCaptureFailed()V
.end method

.method public abstract onImageReceived(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V
.end method

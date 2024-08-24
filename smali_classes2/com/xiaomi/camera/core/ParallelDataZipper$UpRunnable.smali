.class public Lcom/xiaomi/camera/core/ParallelDataZipper$UpRunnable;
.super Ljava/lang/Object;
.source "ParallelDataZipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/ParallelDataZipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpRunnable"
.end annotation


# instance fields
.field public mCaptureData:Lcom/xiaomi/camera/core/CaptureData;

.field public final synthetic this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$UpRunnable;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$UpRunnable;->mCaptureData:Lcom/xiaomi/camera/core/CaptureData;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Confirm Runnable run"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$UpRunnable;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$UpRunnable;->mCaptureData:Lcom/xiaomi/camera/core/CaptureData;

    invoke-static {v0, p0}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$900(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/CaptureData;)V

    return-void
.end method

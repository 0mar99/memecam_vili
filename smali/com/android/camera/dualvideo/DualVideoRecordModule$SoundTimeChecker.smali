.class public Lcom/android/camera/dualvideo/DualVideoRecordModule$SoundTimeChecker;
.super Ljava/lang/Object;
.source "DualVideoRecordModule.java"

# interfaces
.implements Lcom/android/camera/dualvideo/Checker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/DualVideoRecordModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundTimeChecker"
.end annotation


# instance fields
.field public final WAITING_TIME:J

.field public final synthetic this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$SoundTimeChecker;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xfa

    .line 2
    iput-wide v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$SoundTimeChecker;->WAITING_TIME:J

    return-void
.end method


# virtual methods
.method public waitTime()J
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$SoundTimeChecker;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-static {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->access$000(Lcom/android/camera/dualvideo/DualVideoRecordModule;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xfa

    cmp-long p0, v3, v5

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    sub-long v1, v5, v3

    :goto_0
    return-wide v1
.end method

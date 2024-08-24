.class public Lcom/android/camera/module/VideoModule$5;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$5;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$5;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/video/SlowMotionModule;->isHFR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMotionDetectionOn()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$5;->this$0:Lcom/android/camera/module/VideoModule;

    iget v1, v1, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-interface {v0, v1, v2, v2}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->setMotionDetectionRectAlpha(IIZ)V

    .line 5
    :cond_0
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setMotionDetectionAnimator(Z)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/module/VideoModule$5;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)V

    :cond_1
    return-void
.end method

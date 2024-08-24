.class public Lcom/android/camera/features/mode/capture/CaptureModule$SuperNightCbCaptureImpl;
.super Lcom/android/camera/module/image/SuperNightCbImageImpl;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mode/capture/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuperNightCbCaptureImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mode/capture/CaptureModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mode/capture/CaptureModule;Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mode/capture/CaptureModule$SuperNightCbCaptureImpl;->this$0:Lcom/android/camera/features/mode/capture/CaptureModule;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/camera/module/image/SuperNightCbImageImpl;-><init>(Lcom/android/camera/module/Module;)V

    return-void
.end method


# virtual methods
.method public isSupportSuperNight()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule$SuperNightCbCaptureImpl;->this$0:Lcom/android/camera/features/mode/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/features/mode/capture/CaptureModule;->access$000(Lcom/android/camera/features/mode/capture/CaptureModule;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/image/SuperNightCbImageImpl;->commonCheck()Z

    move-result p0

    return p0
.end method

.class public Lcom/android/camera/module/VideoSkyModule$2;
.super Landroid/os/CountDownTimer;
.source "VideoSkyModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/VideoSkyModule;->startRecordingTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/VideoSkyModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoSkyModule;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/VideoSkyModule$2;->this$0:Lcom/android/camera/module/VideoSkyModule;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/VideoSkyModule;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "count down onFinish~"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, v0}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

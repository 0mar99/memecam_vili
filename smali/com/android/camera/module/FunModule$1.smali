.class public Lcom/android/camera/module/FunModule$1;
.super Landroid/os/CountDownTimer;
.source "FunModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/FunModule;->updateRecordingTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/FunModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/FunModule;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/FunModule$1;->this$0:Lcom/android/camera/module/FunModule;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/FunModule$1;->this$0:Lcom/android/camera/module/FunModule;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/FunModule;->stopVideoRecording(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    long-to-float p1, p1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/FunModule$1;->this$0:Lcom/android/camera/module/FunModule;

    .line 2
    invoke-static {p0}, Lcom/android/camera/module/FunModule;->access$000(Lcom/android/camera/module/FunModule;)F

    move-result p0

    mul-float/2addr p1, p0

    float-to-long p0, p1

    const-wide/16 v0, 0x3b6

    add-long/2addr p0, v0

    const-wide/16 v0, 0x1c2

    sub-long/2addr p0, v0

    const/4 p2, 0x0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

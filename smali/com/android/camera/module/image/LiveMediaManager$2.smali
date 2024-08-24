.class public Lcom/android/camera/module/image/LiveMediaManager$2;
.super Landroid/os/CountDownTimer;
.source "LiveMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/image/LiveMediaManager;->updateRecordingTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/image/LiveMediaManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/image/LiveMediaManager;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/image/LiveMediaManager$2;->this$0:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/LiveMediaManager$2;->this$0:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {p0}, Lcom/android/camera/module/image/LiveMediaManager;->stopVideoRecording()V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    const-wide/16 v0, 0x3b6

    add-long/2addr p1, v0

    const-wide/16 v0, 0x1c2

    sub-long/2addr p1, v0

    const/4 p0, 0x0

    .line 1
    invoke-static {p1, p2, p0}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOO()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 6
    invoke-interface {p1, p0, p2}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->updateRecordingTime(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

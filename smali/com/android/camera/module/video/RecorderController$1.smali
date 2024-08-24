.class public Lcom/android/camera/module/video/RecorderController$1;
.super Landroid/os/Handler;
.source "RecorderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video/RecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/video/RecorderController;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/video/RecorderController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    invoke-static {p1}, Lcom/android/camera/module/video/RecorderController;->access$000(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/UserRecordSetting;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p1, Lcom/android/camera/module/video/UserRecordSetting;->mStartRecordTimens:J

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->motionDetectionRestart()V

    :goto_0
    return-void
.end method

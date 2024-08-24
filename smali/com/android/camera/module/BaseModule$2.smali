.class public Lcom/android/camera/module/BaseModule$2;
.super Landroid/media/AudioManager$AudioRecordingCallback;
.source "BaseModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/BaseModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/BaseModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/BaseModule$2;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioRecordingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingConfigChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule$2;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-static {p1}, Lcom/android/camera/module/BaseModule;->access$100(Lcom/android/camera/module/BaseModule;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/BaseModule$2;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BaseModule"

    const-string/jumbo v0, "onRecordingConfigChanged-MODE_IN_CALL"

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule$2;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onActionStop()V

    :cond_0
    return-void
.end method

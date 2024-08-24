.class public Lcom/android/camera/module/image/LiveMediaManager$1;
.super Ljava/lang/Object;
.source "LiveMediaManager.java"

# interfaces
.implements Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/image/LiveMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/image/LiveMediaManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/image/LiveMediaManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/image/LiveMediaManager$1;->this$0:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/LiveMediaManager$1;->this$0:Lcom/android/camera/module/image/LiveMediaManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/image/LiveMediaManager;->playVideoSound(Z)V

    return-void
.end method

.method public onStopped(Lcom/android/camera/module/encoder/MediaEncoder;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopped: encoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " muxerStopped:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LiveMediaManager"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/image/LiveMediaManager$1;->this$0:Lcom/android/camera/module/image/LiveMediaManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/LiveMediaManager;->executeSaveTask(Z)V

    :cond_0
    return-void
.end method

.method public save(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/LiveMediaManager$1;->this$0:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/image/LiveMediaManager;->addSaveTask(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public save(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/image/LiveMediaManager$1;->this$0:Lcom/android/camera/module/image/LiveMediaManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/image/LiveMediaManager;->addSaveTask(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

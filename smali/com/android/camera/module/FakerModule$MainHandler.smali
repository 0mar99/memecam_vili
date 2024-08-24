.class public Lcom/android/camera/module/FakerModule$MainHandler;
.super Landroid/os/Handler;
.source "FakerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/FakerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field public mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/FakerModule;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/camera/module/FakerModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/FakerModule;Lcom/android/camera/module/FakerModule;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/FakerModule$MainHandler;->this$0:Lcom/android/camera/module/FakerModule;

    .line 2
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/FakerModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/FakerModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/FakerModule;

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/module/FakerModule;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "onMessage MSG_ABANDON_HANDLER setActivity null"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/FakerModule$MainHandler;->this$0:Lcom/android/camera/module/FakerModule;

    invoke-virtual {v1, v2}, Lcom/android/camera/module/BaseModule;->setActivity(Lcom/android/camera/Camera;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/FakerModule$MainHandler;->this$0:Lcom/android/camera/module/FakerModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/FakerModule$MainHandler;->this$0:Lcom/android/camera/module/FakerModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 8
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x80

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/16 v4, 0x11

    if-ne v1, v4, :cond_3

    .line 9
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getScreenDelay()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no consumer for this message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

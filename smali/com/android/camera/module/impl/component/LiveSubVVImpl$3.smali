.class public Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;
.super Ljava/lang/Object;
.source "LiveSubVVImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/LiveSubVVImpl;->OnNeedStopRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->stopRecording()V

    :cond_0
    return-void
.end method

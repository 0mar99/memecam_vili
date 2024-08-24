.class public Lcom/android/camera/module/VideoBase$2;
.super Ljava/lang/Object;
.source "VideoBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/VideoBase;->exitSavePowerMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/VideoBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isAutoHibernationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreWindowBrightness()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mSavePowerMode:Z

    :cond_1
    return-void
.end method

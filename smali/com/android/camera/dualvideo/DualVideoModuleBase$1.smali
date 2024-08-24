.class public Lcom/android/camera/dualvideo/DualVideoModuleBase$1;
.super Ljava/lang/Object;
.source "DualVideoModuleBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/DualVideoModuleBase;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$1;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModuleContent;->impl2()Lcom/android/camera/protocol/protocols/ModuleContent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ModuleContent;->getParent()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method

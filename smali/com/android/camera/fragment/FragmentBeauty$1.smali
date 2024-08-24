.class public Lcom/android/camera/fragment/FragmentBeauty$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "FragmentBeauty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBeauty;->initShineCompareView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentBeauty;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentBeauty;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty$1;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty$1;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setShineComparation(Z)V

    .line 3
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackCompareBeautyTouch()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty$1;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setShineComparation(Z)V

    .line 5
    :goto_0
    invoke-static {v1}, Lcom/android/camera/fragment/beauty/ShineHelper;->onBeautyChanged(Z)V

    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleTouchTint onCancel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentBeauty"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty$1;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setShineComparation(Z)V

    return-void
.end method

.class public Lcom/android/camera/fragment/FragmentBeauty$4;
.super Ljava/lang/Object;
.source "FragmentBeauty.java"

# interfaces
.implements Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBeauty;->initAdjustSeekBar()V
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
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapProgressToValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentBeauty;->access$100(Lcom/android/camera/fragment/FragmentBeauty;)Lcom/android/camera/ui/SeekBarCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/SeekBarCompat;->isCenterTwoWayMode()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    div-int/lit8 p1, p1, 0x2

    .line 3
    :cond_0
    div-int/lit8 p1, p1, 0x1

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onHideTips()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setWatermarkVisible(I)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 2
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-static {p3}, Lcom/android/camera/fragment/FragmentBeauty;->access$100(Lcom/android/camera/fragment/FragmentBeauty;)Lcom/android/camera/ui/SeekBarCompat;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/SeekBar;->isAccessibilityFocused()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBeauty;->access$100(Lcom/android/camera/fragment/FragmentBeauty;)Lcom/android/camera/ui/SeekBarCompat;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/SeekBarCompat;->setProgress(I)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    .line 5
    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBeauty;->access$200(Lcom/android/camera/fragment/FragmentBeauty;)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->getDisplayNameRes()I

    move-result v0

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/FragmentBeauty$4;->mapProgressToValue(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-interface {p1, p3, v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 8
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentBeauty;->access$000(Lcom/android/camera/fragment/FragmentBeauty;)Lio/reactivex/FlowableEmitter;

    move-result-object p0

    div-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onStartSeekScrolling(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->setWatermarkVisible(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopSeekScrolling(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBeauty;->access$300(Lcom/android/camera/fragment/FragmentBeauty;)Lcom/android/camera/fragment/beauty/BeautyItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentBeauty;->access$300(Lcom/android/camera/fragment/FragmentBeauty;)Lcom/android/camera/fragment/beauty/BeautyItem;

    move-result-object p0

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyItem;->makeup2SubEffect:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackAdjustSeekBarMakeup2(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

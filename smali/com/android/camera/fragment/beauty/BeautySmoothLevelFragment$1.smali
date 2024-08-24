.class public Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment$1;
.super Ljava/lang/Object;
.source "BeautySmoothLevelFragment.java"

# interfaces
.implements Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapProgressToValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;

    invoke-static {p0}, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->access$000(Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;)Lcom/android/camera/ui/SeekBarCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/SeekBarCompat;->isCenterTwoWayMode()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    div-int/lit8 p1, p1, 0x2

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onHideTips()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->access$100(Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;I)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 2
    iget-object p3, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;

    invoke-static {p3}, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->access$000(Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;)Lcom/android/camera/ui/SeekBarCompat;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/SeekBar;->isAccessibilityFocused()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;

    invoke-static {p0}, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->access$000(Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;)Lcom/android/camera/ui/SeekBarCompat;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/SeekBarCompat;->setProgress(I)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment$1;->mapProgressToValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p3, v0, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    :cond_1
    :goto_0
    const-string/jumbo p0, "pref_beautify_skin_smooth_ratio_key"

    .line 5
    invoke-static {p0, p2}, Lcom/android/camera/CameraSettings;->setFaceBeautyRatio(Ljava/lang/String;I)V

    .line 6
    invoke-static {v0}, Lcom/android/camera/fragment/beauty/ShineHelper;->onBeautyChanged(Z)V

    return-void
.end method

.method public onStartSeekScrolling(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->access$100(Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

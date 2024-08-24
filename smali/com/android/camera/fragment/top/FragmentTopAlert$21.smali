.class public Lcom/android/camera/fragment/top/FragmentTopAlert$21;
.super Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;
.source "FragmentTopAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/top/FragmentTopAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$21;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    return-void
.end method


# virtual methods
.method public runToSafe()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$21;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$2900(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$21;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$2900(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x33ffffff

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->getPaintColor()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setBackgroundColor(I)V

    .line 3
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$21;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$2900(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setPaintAlpha(Landroid/graphics/Paint;)V

    .line 4
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$21;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$2900(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setPaintStyle(Landroid/graphics/Paint;)V

    .line 5
    :cond_1
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$21;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    .line 6
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07079c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$21;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$3000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 8
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$21;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$3000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0a0514

    if-ne v3, v4, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v8, v1

    .line 9
    :goto_2
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$21;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$2900(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x12c

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$3100(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;ZIILandroid/widget/LinearLayout$LayoutParams;I)V

    return-void
.end method

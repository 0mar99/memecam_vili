.class public Lcom/android/camera/fragment/mode/FragmentMoreModePopup$2;
.super Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;
.source "FragmentMoreModePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->onPromptExpand(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/mode/FragmentMoreModePopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup$2;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-direct {p0}, Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onNewDragStart "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MoreModePopup"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup$2;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    iget-object p2, p1, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_0

    .line 4
    iget p1, p1, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mTargetAlpha:I

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup$2;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

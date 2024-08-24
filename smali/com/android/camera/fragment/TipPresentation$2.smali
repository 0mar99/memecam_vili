.class public Lcom/android/camera/fragment/TipPresentation$2;
.super Ljava/lang/Object;
.source "TipPresentation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/TipPresentation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/TipPresentation;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/TipPresentation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/TipPresentation$2;->this$0:Lcom/android/camera/fragment/TipPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/TipPresentation$2;->this$0:Lcom/android/camera/fragment/TipPresentation;

    invoke-virtual {p0}, Lcom/android/camera/fragment/TipPresentation;->hideFlatSelfieAnimator()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.class public interface abstract Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;
.super Ljava/lang/Object;
.source "ISubEffectIndicatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;
    }
.end annotation


# virtual methods
.method public abstract addIndicatorViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/SubEffectUI;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getIndicatorCount()I
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract isVisible()Z
.end method

.method public abstract provideRotateItem(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract removeAllIndicatorViews()V
.end method

.method public abstract setCheck(Ljava/lang/String;)V
.end method

.method public abstract setOnIndicatorChangeListener(Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;)V
.end method

.method public abstract setVisibility(Z)V
.end method

.class public interface abstract Lcom/android/camera/display/device/IFoldState;
.super Ljava/lang/Object;
.source "IFoldState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/display/device/IFoldState$OnFoldedListener;
    }
.end annotation


# virtual methods
.method public abstract getDisplayFoldState()Z
.end method

.method public abstract getDisplaySelfieState()Z
.end method

.method public abstract init(Landroid/content/Context;Lcom/android/camera/display/device/IFoldState$OnFoldedListener;)V
.end method

.method public abstract reverseDisplayStateWhileUnFold(Z)V
.end method

.method public abstract switchDisplayForFlatSelfie(I)V
.end method

.method public abstract switchPresentationDisplay(Z)V
.end method

.method public abstract unInit()V
.end method

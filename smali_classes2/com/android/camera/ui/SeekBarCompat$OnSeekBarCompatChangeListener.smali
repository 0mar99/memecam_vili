.class public interface abstract Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;
.super Ljava/lang/Object;
.source "SeekBarCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SeekBarCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSeekBarCompatChangeListener"
.end annotation


# virtual methods
.method public mapProgressToValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onHideTips()V
    .locals 0

    return-void
.end method

.method public abstract onProgressChanged(Landroid/widget/SeekBar;IZ)V
.end method

.method public onStartSeekScrolling(Z)V
    .locals 0

    return-void
.end method

.method public abstract onStartTrackingTouch(Landroid/widget/SeekBar;)V
.end method

.method public onStopSeekScrolling(I)V
    .locals 0

    return-void
.end method

.method public abstract onStopTrackingTouch(Landroid/widget/SeekBar;)V
.end method

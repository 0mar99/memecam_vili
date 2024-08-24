.class public Lcom/android/camera/ui/ActivateColorImageView;
.super Lcom/android/camera/ui/ActivateImageView;
.source "ActivateColorImageView.java"


# instance fields
.field public mIsActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ActivateImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ActivateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/ActivateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/ActivateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public isActivated()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/ActivateColorImageView;->mIsActive:Z

    return p0
.end method

.method public setActiveOrColorFilter(ZI)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/ActivateColorImageView;->mIsActive:Z

    .line 2
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

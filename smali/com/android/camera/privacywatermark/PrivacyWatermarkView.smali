.class public Lcom/android/camera/privacywatermark/PrivacyWatermarkView;
.super Landroid/view/View;
.source "PrivacyWatermarkView.java"


# instance fields
.field public mPrivacyWatermark:Ljava/lang/String;

.field public mRotation:I

.field public mViewSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mViewSize:Landroid/util/Size;

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mPrivacyWatermark:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mRotation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mViewSize:Landroid/util/Size;

    const-string p1, ""

    .line 7
    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mPrivacyWatermark:Ljava/lang/String;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mRotation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mViewSize:Landroid/util/Size;

    const-string p1, ""

    .line 11
    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mPrivacyWatermark:Ljava/lang/String;

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mRotation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mViewSize:Landroid/util/Size;

    const-string p1, ""

    .line 15
    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mPrivacyWatermark:Ljava/lang/String;

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mRotation:I

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mPrivacyWatermark:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mPrivacyWatermark:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mRotation:I

    rsub-int p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    .line 5
    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkUtils;->drawWatermark(Landroid/graphics/Canvas;Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mViewSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mViewSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public setPrivacyWatermark(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mPrivacyWatermark:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mPrivacyWatermark:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRotation(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mRotation:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mRotation:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setViewSize(II)V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mViewSize:Landroid/util/Size;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->mViewSize:Landroid/util/Size;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.class public Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;
.super Ljava/lang/Object;
.source "TopAlertSlideSwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/TopAlertSlideSwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemData"
.end annotation


# instance fields
.field public mContentDescriptionRes:I

.field public mDisabledColor:I

.field public mDisplayNameRes:I

.field public mIconRes:I

.field public mIconShadowRes:I

.field public mIsDisabled:Z

.field public mIsShowText:Z

.field public mOriginalSelectColor:I

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x4dffffff    # 5.3687088E8f

    .line 11
    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mDisabledColor:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IIZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x4dffffff    # 5.3687088E8f

    .line 2
    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mDisabledColor:I

    .line 3
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIconRes:I

    .line 4
    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIconShadowRes:I

    .line 5
    iput-object p3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mValue:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mDisplayNameRes:I

    .line 7
    iput p5, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mOriginalSelectColor:I

    .line 8
    iput-boolean p6, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsDisabled:Z

    .line 9
    iput-boolean p7, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsShowText:Z

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mOriginalSelectColor:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mContentDescriptionRes:I

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mDisplayNameRes:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIconRes:I

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsDisabled:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsShowText:Z

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    check-cast p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;

    iget v1, p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIconRes:I

    iget v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIconRes:I

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mValue:Ljava/lang/String;

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mDisplayNameRes:I

    iget v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mDisplayNameRes:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mOriginalSelectColor:I

    iget v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mOriginalSelectColor:I

    if-ne v1, v2, :cond_1

    iget-boolean p1, p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsShowText:Z

    iget-boolean p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsShowText:Z

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public getContentDescriptionRes()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mContentDescriptionRes:I

    return p0
.end method

.method public getDisplayNameRes()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mDisplayNameRes:I

    return p0
.end method

.method public getIconRes()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIconRes:I

    return p0
.end method

.method public getIconShadowRes()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIconShadowRes:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public isIsDisabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsDisabled:Z

    return p0
.end method

.method public isIsShowText()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsShowText:Z

    return p0
.end method

.method public setContentDescriptionRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mContentDescriptionRes:I

    return-void
.end method

.method public setDisplayNameRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mDisplayNameRes:I

    return-void
.end method

.method public setIconRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIconRes:I

    return-void
.end method

.method public setIconShadowRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIconShadowRes:I

    return-void
.end method

.method public setIsDisabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsDisabled:Z

    return-void
.end method

.method public setIsShowText(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsShowText:Z

    return-void
.end method

.method public setOriginalSelectColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mOriginalSelectColor:I

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mValue:Ljava/lang/String;

    return-void
.end method

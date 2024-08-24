.class public Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;
.super Lcom/android/camera/fragment/beauty/MakeupSettingBusiness;
.source "Makeup2SettingBusiness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;
    }
.end annotation


# instance fields
.field public mBeautyMode:Ljava/lang/String;

.field public mBeautyType:Ljava/lang/String;

.field public mExtraTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field public mMakeup2SubEffectType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/beauty/MakeupSettingBusiness;-><init>(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;)V

    const-string/jumbo p1, "sub_makeup"

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mMakeup2SubEffectType:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mExtraTable:Ljava/util/Map;

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mBeautyMode:Ljava/lang/String;

    return-void
.end method

.method private getProgess(Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mMakeup2SubEffectType:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x660f7da9

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const v3, -0x5a8ef818

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "sub_makeup"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "sub_filter"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v4

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    goto :goto_1

    .line 2
    :cond_4
    iget v0, p1, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;->filterValue:I

    goto :goto_1

    .line 3
    :cond_5
    iget v0, p1, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;->makeValue:I

    :goto_1
    return v0
.end method

.method private setProgree(Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mMakeup2SubEffectType:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x660f7da9

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, -0x5a8ef818

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sub_makeup"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "sub_filter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v2, :cond_3

    goto :goto_2

    .line 2
    :cond_3
    iput p2, p1, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;->filterValue:I

    goto :goto_2

    .line 3
    :cond_4
    iput p2, p1, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;->makeValue:I

    :goto_2
    return-void
.end method


# virtual methods
.method public getDefaultProgressByCurrentItem()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/MakeupSettingBusiness;->mCurrentBeautyItemType:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/constant/BeautyConstant;->getDefaultValueByKey(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getProgressByCurrentItem()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mExtraTable:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupSettingBusiness;->mCurrentBeautyItemType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupSettingBusiness;->mCurrentBeautyItemType:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/beauty/MakeupSettingBusiness;->getProgressDefValue(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mExtraTable:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupSettingBusiness;->mCurrentBeautyItemType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->getProgess(Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;)I

    move-result v0

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/MakeupSettingBusiness;->mCurrentBeautyItemType:Ljava/lang/String;

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public resetBeauty()V
    .locals 0

    return-void
.end method

.method public setCurrentItemType(Lcom/android/camera/fragment/beauty/BeautyItem;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/camera/fragment/beauty/BeautyItem;->makeup2SubEffect:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mMakeup2SubEffectType:Ljava/lang/String;

    .line 2
    iget-boolean v0, p1, Lcom/android/camera/fragment/beauty/BeautyItem;->fromUser:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/camera/fragment/beauty/BeautyItem;->beautyType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMakeups2Type()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupSettingBusiness;->mCurrentBeautyItemType:Ljava/lang/String;

    .line 3
    iget-object v1, p1, Lcom/android/camera/fragment/beauty/BeautyItem;->beautyMode:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mBeautyMode:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lcom/android/camera/fragment/beauty/BeautyItem;->beautyType:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mBeautyType:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mExtraTable:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->getProgess(Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;)I

    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupSettingBusiness;->mCurrentBeautyItemType:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setBeautyMakeups2Type(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mMakeup2SubEffectType:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mBeautyType:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/camera/CameraSettings;->setBeautyRatioForSubEffect(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p0, 0x0

    .line 9
    invoke-static {p0}, Lcom/android/camera/fragment/beauty/ShineHelper;->onBeautyChanged(Z)V

    return-void
.end method

.method public setProgressForCurrentItem(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mExtraTable:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupSettingBusiness;->mCurrentBeautyItemType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;-><init>(Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$1;)V

    move v2, v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->getProgess(Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;)I

    move-result v2

    .line 4
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->setProgree(Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;I)V

    .line 5
    iget-object v3, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mExtraTable:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/camera/fragment/beauty/MakeupSettingBusiness;->mCurrentBeautyItemType:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupSettingBusiness;->mCurrentBeautyItemType:Ljava/lang/String;

    if-ne v2, p1, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/beauty/MakeupSettingBusiness;->getProgressDefValue(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 8
    :cond_1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setBeautyMakeups2Type(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mMakeup2SubEffectType:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mBeautyType:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/camera/CameraSettings;->setBeautyRatioForSubEffect(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    invoke-static {v1}, Lcom/android/camera/fragment/beauty/ShineHelper;->onBeautyChanged(Z)V

    :cond_2
    return-void
.end method

.method public updateExtraTable()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/MakeupSettingBusiness;->getBeautyType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/beauty/MakeupSettingBusiness;->getSupportedTypeArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/TypeItem;

    .line 2
    iget-object v1, v1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string/jumbo v2, "sub_makeup"

    .line 4
    invoke-static {v2, v1}, Lcom/android/camera/CameraSettings;->getBeautyRatioForSubEffect(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v2, "sub_filter"

    .line 5
    invoke-static {v2, v1}, Lcom/android/camera/CameraSettings;->getBeautyRatioForSubEffect(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v3

    .line 6
    :goto_1
    iget-object v4, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mExtraTable:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;

    if-nez v4, :cond_1

    .line 7
    new-instance v4, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;-><init>(Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$1;)V

    .line 8
    :cond_1
    iput v3, v4, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;->makeValue:I

    .line 9
    iput v2, v4, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness$MakeupSubEffectItem;->filterValue:I

    .line 10
    iget-object v2, p0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;->mExtraTable:Ljava/util/Map;

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

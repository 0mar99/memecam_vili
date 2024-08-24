.class public Lcom/android/camera/scene/MiAlgoAsdSceneProfile;
.super Ljava/lang/Object;
.source "MiAlgoAsdSceneProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/scene/MiAlgoAsdSceneProfile$MialgoAsdSceneClass;
    }
.end annotation


# static fields
.field public static final AI_SCENE_DETECTED:I = 0x3

.field public static final AI_SCENE_SHIFT:I = 0x3e8

.field public static final COMPAT_FOOD:I

.field public static final DIRTY:I = 0x6

.field public static final HDR:I = 0x8

.field public static final MI_ALGO_ASD_VERSION_2_0:F = 2.0f

.field public static final MI_ALGO_ASD_VERSION_3_0:F = 3.0f

.field public static final NONE:I = 0x0

.field public static final NON_SEMANTIC_CLASS:I = 0x1

.field public static final ON_TRIPOD:I = 0x4

.field public static final SEMANTICS_CLASS:I = 0x0

.field public static final STATE_CLASS:I = 0x2

.field public static sSceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/scene/MiScene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    const/16 v1, 0x3e8

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->generateCompatAiASDType(II)I

    move-result v0

    sput v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->COMPAT_FOOD:I

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    .line 3
    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v0

    const/4 v1, 0x4

    .line 4
    iput v1, v0, Lcom/android/camera/scene/MiScene;->type:I

    .line 5
    sget-object v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v0

    const/4 v1, 0x6

    .line 7
    iput v1, v0, Lcom/android/camera/scene/MiScene;->type:I

    .line 8
    sget-object v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v0

    .line 10
    sget v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->COMPAT_FOOD:I

    iput v1, v0, Lcom/android/camera/scene/MiScene;->type:I

    .line 11
    sget-object v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v0

    const/16 v1, 0x8

    .line 13
    iput v1, v0, Lcom/android/camera/scene/MiScene;->type:I

    .line 14
    sget-object v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearInitASDScenes()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/scene/MiScene;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/android/camera/scene/MiScene;->setEnable(Z)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lcom/android/camera/scene/MiScene;->isChange(F)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static generateCompatAiASDType(II)I
    .locals 0

    or-int/2addr p0, p1

    return p0
.end method

.method public static getSceneTipResId(II)I
    .locals 4

    const/4 v0, 0x0

    if-lez p0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/scene/MiScene;

    .line 2
    iget v3, v2, Lcom/android/camera/scene/MiScene;->type:I

    if-ne v3, p0, :cond_1

    .line 3
    iget-object v2, v2, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 5
    :cond_2
    sget-object p0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/scene/MiScene;

    iget-object p0, p0, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 6
    :cond_3
    :goto_0
    sget-object p0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/scene/MiScene;

    iget-object p0, p0, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static isAlreadyTip()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/scene/MiScene;

    .line 2
    invoke-virtual {v1}, Lcom/android/camera/scene/MiScene;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isCheckSceneEnable(II)Z
    .locals 0

    if-lez p0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSceneChange(II)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/scene/MiScene;

    .line 3
    iget v2, v1, Lcom/android/camera/scene/MiScene;->type:I

    if-ne v2, p0, :cond_0

    int-to-float p0, p1

    .line 4
    invoke-virtual {v1, p0}, Lcom/android/camera/scene/MiScene;->isChange(F)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isTipEnable(I)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/scene/MiScene;

    .line 3
    iget v2, v1, Lcom/android/camera/scene/MiScene;->type:I

    if-ne v2, p0, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/scene/MiScene;->isEnable()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static setTipEnable(IZ)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/scene/MiScene;

    .line 3
    iget v2, v1, Lcom/android/camera/scene/MiScene;->type:I

    if-ne v2, p0, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/android/camera/scene/MiScene;->setEnable(Z)V

    :cond_1
    return-void
.end method

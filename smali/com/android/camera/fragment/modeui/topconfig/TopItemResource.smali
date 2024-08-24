.class public Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
.super Ljava/lang/Object;
.source "TopItemResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;
    }
.end annotation


# instance fields
.field public contentDescriptString:Ljava/lang/String;

.field public isActivated:Z

.field public isColoring:Z

.field public mContentDescriptionStringId:I

.field public newBackgroundResourceId:I

.field public newImageResourceId:I

.field public topSelectedAnimID:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->newImageResourceId:I

    .line 4
    iput p2, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->newBackgroundResourceId:I

    .line 5
    iput p3, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->topSelectedAnimID:I

    .line 6
    iput p4, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->mContentDescriptionStringId:I

    .line 7
    iput-object p5, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->contentDescriptString:Ljava/lang/String;

    .line 8
    iput-boolean p6, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->isActivated:Z

    .line 9
    iput-boolean p7, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->isColoring:Z

    return-void
.end method

.method public synthetic constructor <init>(IIIILjava/lang/String;ZZLcom/android/camera/fragment/modeui/topconfig/TopItemResource$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;-><init>(IIIILjava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public getContentDescriptString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->contentDescriptString:Ljava/lang/String;

    return-object p0
.end method

.method public getNewBackgroundResourceId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->newBackgroundResourceId:I

    return p0
.end method

.method public getNewImageResourceId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->newImageResourceId:I

    return p0
.end method

.method public getTopSelectedAnimID()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->topSelectedAnimID:I

    return p0
.end method

.method public getmContentDescriptionStringId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->mContentDescriptionStringId:I

    return p0
.end method

.method public isActivated()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->isActivated:Z

    return p0
.end method

.method public isColoring()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->isColoring:Z

    return p0
.end method

.method public setActivated(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->isActivated:Z

    return-void
.end method

.method public setColoring(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->isColoring:Z

    return-void
.end method

.method public setContentDescriptString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->contentDescriptString:Ljava/lang/String;

    return-void
.end method

.method public setNewBackgroundResourceId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->newBackgroundResourceId:I

    return-void
.end method

.method public setNewImageResourceId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->newImageResourceId:I

    return-void
.end method

.method public setTopSelectedAnimID(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->topSelectedAnimID:I

    return-void
.end method

.method public setmContentDescriptionStringId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;->mContentDescriptionStringId:I

    return-void
.end method

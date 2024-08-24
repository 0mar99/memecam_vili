.class public Lcom/android/camera2/RoleIdAndQuickshotNoSRZoomRange;
.super Ljava/lang/Object;
.source "RoleIdAndQuickshotNoSRZoomRange.java"


# instance fields
.field public mRoleId:I

.field public mZoomRangeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera2/RoleIdAndQuickshotNoSRZoomRange;->mRoleId:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/RoleIdAndQuickshotNoSRZoomRange;->mZoomRangeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addZoomRange(FF)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera2/RoleIdAndQuickshotNoSRZoomRange;->mZoomRangeList:Ljava/util/List;

    new-instance v0, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getRoleId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/RoleIdAndQuickshotNoSRZoomRange;->mRoleId:I

    return p0
.end method

.method public getZoomRangeList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera2/RoleIdAndQuickshotNoSRZoomRange;->mZoomRangeList:Ljava/util/List;

    return-object p0
.end method

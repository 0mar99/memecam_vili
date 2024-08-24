.class public LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o;
.super LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;
.source "AnimatablePointValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public OooO00o()LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0;

    iget-object p0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->OooO00o:Ljava/util/List;

    invoke-direct {v0, p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic OooO0O0()Ljava/util/List;
    .locals 0

    .line 1
    invoke-super {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->OooO0O0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic OooO0OO()Z
    .locals 0

    .line 1
    invoke-super {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->OooO0OO()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

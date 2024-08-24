.class public LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0O0;
.super LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o;
.source "ColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o<",
        "Ljava/lang/Integer;",
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
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;F)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "Ljava/lang/Integer;",
            ">;F)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0O0;->OooO0O0(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0O0;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;F)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public OooO0O0(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;F)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "Ljava/lang/Integer;",
            ">;F)I"
        }
    .end annotation

    .line 1
    iget-object v0, p1, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0O0:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p1, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0OO:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    iget-object v1, p1, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0OO:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    iget-object v2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;

    if-eqz v2, :cond_0

    .line 5
    iget v3, p1, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0o0:F

    iget-object p1, p1, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0o:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0Oo()F

    move-result v8

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o0()F

    move-result v9

    move v7, p2

    .line 7
    invoke-virtual/range {v2 .. v9}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO00o(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    invoke-static {p2, p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(FFF)F

    move-result p0

    invoke-static {p0, v0, v1}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0O0;->OooO00o(FII)I

    move-result p0

    return p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public OooOO0()I
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o()LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;

    move-result-object v0

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0OO()F

    move-result v1

    invoke-virtual {p0, v0, v1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0O0;->OooO0O0(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;F)I

    move-result p0

    return p0
.end method

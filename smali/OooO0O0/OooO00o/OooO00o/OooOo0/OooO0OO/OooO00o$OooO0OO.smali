.class public final LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0OO;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"

# interfaces
.implements LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0OO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO00o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0OO;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "not implemented"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public OooO00o(F)Z
    .locals 0

    .line 2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "not implemented"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public OooO0O0()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public OooO0O0(F)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public OooO0OO()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

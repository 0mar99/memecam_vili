.class public LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOooO;
.super Ljava/lang/Object;
.source "ScaleXYParser.java"

# interfaces
.implements LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0OO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0OO<",
        "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOooO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOooO;

    invoke-direct {v0}, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOooO;-><init>()V

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOooO;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOooO;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->peek()LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o()V

    .line 4
    :cond_1
    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oo()D

    move-result-wide v0

    double-to-float v0, v0

    .line 5
    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oo()D

    move-result-wide v1

    double-to-float v1, v1

    .line 6
    :goto_1
    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOOO0()V

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    .line 8
    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0OO()V

    .line 9
    :cond_3
    new-instance p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    mul-float/2addr v0, p2

    div-float/2addr v1, p1

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;-><init>(FF)V

    return-object p0
.end method

.method public bridge synthetic OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOooO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;

    move-result-object p0

    return-object p0
.end method

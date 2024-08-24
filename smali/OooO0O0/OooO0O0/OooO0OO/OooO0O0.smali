.class public LOooO0O0/OooO0O0/OooO0OO/OooO0O0;
.super Ljava/lang/Object;
.source "BitVector.java"


# instance fields
.field public volatile OooO00o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, LOooO0O0/OooO0O0/OooO0OO/OooO0O0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, LOooO0O0/OooO0O0/OooO0OO/OooO0O0;->OooO00o:I

    return-void
.end method


# virtual methods
.method public declared-synchronized OooO00o()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 5
    :try_start_0
    iput v0, p0, LOooO0O0/OooO0O0/OooO0OO/OooO0O0;->OooO00o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized OooO00o([I)V
    .locals 4

    monitor-enter p0

    .line 2
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 3
    iget v3, p0, LOooO0O0/OooO0O0/OooO0OO/OooO0O0;->OooO00o:I

    or-int/2addr v2, v3

    iput v2, p0, LOooO0O0/OooO0O0/OooO0OO/OooO0O0;->OooO00o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public OooO00o(I)Z
    .locals 0

    .line 1
    iget p0, p0, LOooO0O0/OooO0O0/OooO0OO/OooO0O0;->OooO00o:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public OooO0O0()Z
    .locals 0

    .line 1
    iget p0, p0, LOooO0O0/OooO0O0/OooO0OO/OooO0O0;->OooO00o:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public varargs OooO0O0([I)Z
    .locals 4

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 3
    invoke-virtual {p0, v3}, LOooO0O0/OooO0O0/OooO0OO/OooO0O0;->OooO00o(I)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public varargs OooO0OO([I)Z
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 2
    invoke-virtual {p0, v3}, LOooO0O0/OooO0O0/OooO0OO/OooO0O0;->OooO00o(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public varargs declared-synchronized OooO0Oo([I)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 2
    iget v3, p0, LOooO0O0/OooO0O0/OooO0OO/OooO0O0;->OooO00o:I

    not-int v2, v2

    and-int/2addr v2, v3

    iput v2, p0, LOooO0O0/OooO0O0/OooO0OO/OooO0O0;->OooO00o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

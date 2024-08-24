.class public final Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;
.super Ljava8/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoubleCumulateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final array:[D

.field public final fence:I

.field public final function:Ljava8/util/function/DoubleBinaryOperator;

.field public final hi:I

.field public in:D

.field public left:Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

.field public final lo:I

.field public final origin:I

.field public out:D

.field public right:Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

.field public final threshold:I


# direct methods
.method public constructor <init>(Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava8/util/function/DoubleBinaryOperator;[DII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    .line 2
    iput-object p2, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava8/util/function/DoubleBinaryOperator;

    iput-object p3, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    .line 3
    iput p4, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    iput p4, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    iput p5, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    iput p5, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    sub-int/2addr p5, p4

    .line 4
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    div-int/2addr p5, p1

    const/16 p1, 0x10

    if-gt p5, p1, :cond_0

    move p5, p1

    :cond_0
    iput p5, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    return-void
.end method

.method public constructor <init>(Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava8/util/function/DoubleBinaryOperator;[DIIIII)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    .line 6
    iput-object p2, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava8/util/function/DoubleBinaryOperator;

    iput-object p3, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    .line 7
    iput p4, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    iput p5, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    .line 8
    iput p6, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    .line 9
    iput p7, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    iput p8, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v9, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava8/util/function/DoubleBinaryOperator;

    if-eqz v9, :cond_1d

    iget-object v11, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    if-eqz v11, :cond_1d

    .line 2
    iget v12, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    iget v13, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    iget v14, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    move-object v15, v0

    .line 3
    :cond_0
    :goto_0
    iget v8, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    if-ltz v8, :cond_1c

    iget v7, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    array-length v0, v11

    if-gt v7, v0, :cond_1c

    sub-int v0, v7, v8

    const/4 v1, 0x1

    if-le v0, v12, :cond_a

    .line 4
    iget-object v0, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    iget-object v2, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    if-nez v0, :cond_1

    add-int v0, v8, v7

    ushr-int/lit8 v16, v0, 0x1

    .line 5
    new-instance v6, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v0, v6

    move-object v1, v15

    move-object v2, v9

    move-object v3, v11

    move v4, v13

    move v5, v14

    move-object v10, v6

    move v6, v12

    move/from16 p0, v7

    move/from16 v7, v16

    move/from16 v17, v8

    move/from16 v8, p0

    invoke-direct/range {v0 .. v8}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava8/util/function/DoubleBinaryOperator;[DIIIII)V

    iput-object v10, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .line 6
    new-instance v8, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v0, v8

    move/from16 v7, v17

    move-object/from16 v18, v10

    move-object v10, v8

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava8/util/function/DoubleBinaryOperator;[DIIIII)V

    iput-object v10, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v15, v10

    move-object/from16 v6, v18

    goto :goto_6

    :cond_1
    move/from16 v17, v8

    .line 7
    iget-wide v3, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 8
    iput-wide v3, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    if-eqz v2, :cond_5

    .line 9
    iget-wide v5, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    move/from16 v7, v17

    if-ne v7, v13, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {v9, v3, v4, v5, v6}, Ljava8/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v5

    :goto_1
    iput-wide v5, v2, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 11
    :cond_3
    invoke-virtual {v2}, Ljava8/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    or-int/lit8 v3, v1, 0x1

    .line 12
    invoke-virtual {v2, v1, v3}, Ljava8/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x0

    .line 13
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava8/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_7

    move-object v0, v2

    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    or-int/lit8 v3, v1, 0x1

    .line 14
    invoke-virtual {v0, v1, v3}, Ljava8/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    move-object v6, v2

    :goto_5
    if-nez v0, :cond_9

    goto/16 :goto_e

    :cond_9
    move-object v15, v0

    :goto_6
    if-eqz v6, :cond_0

    .line 15
    invoke-virtual {v6}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    goto/16 :goto_0

    :cond_a
    move/from16 p0, v7

    move v7, v8

    .line 16
    :cond_b
    invoke-virtual {v15}, Ljava8/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v0

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_c

    goto/16 :goto_e

    :cond_c
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x2

    if-eqz v2, :cond_d

    const/4 v2, 0x4

    goto :goto_7

    :cond_d
    if-le v7, v13, :cond_e

    move v2, v3

    goto :goto_7

    :cond_e
    const/4 v2, 0x6

    :goto_7
    or-int v5, v0, v2

    .line 17
    invoke-virtual {v15, v0, v5}, Ljava8/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eq v2, v3, :cond_10

    if-ne v7, v13, :cond_f

    .line 18
    aget-wide v5, v11, v13

    add-int/lit8 v8, v13, 0x1

    goto :goto_8

    .line 19
    :cond_f
    iget-wide v5, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    move v8, v7

    :goto_8
    move/from16 v0, p0

    :goto_9
    if-ge v8, v0, :cond_12

    .line 20
    aget-wide v3, v11, v8

    invoke-interface {v9, v5, v6, v3, v4}, Ljava8/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v5

    aput-wide v5, v11, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x2

    goto :goto_9

    :cond_10
    move/from16 v0, p0

    if-ge v0, v14, :cond_11

    .line 21
    aget-wide v3, v11, v7

    add-int/lit8 v8, v7, 0x1

    move-wide v5, v3

    :goto_a
    if-ge v8, v0, :cond_12

    .line 22
    aget-wide v3, v11, v8

    invoke-interface {v9, v5, v6, v3, v4}, Ljava8/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 23
    :cond_11
    iget-wide v5, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 24
    :cond_12
    iput-wide v5, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 25
    :cond_13
    :goto_b
    invoke-virtual {v15}, Ljava8/util/concurrent/CountedCompleter;->getCompleter()Ljava8/util/concurrent/CountedCompleter;

    move-result-object v0

    check-cast v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    if-nez v0, :cond_14

    const/4 v3, 0x4

    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_1c

    .line 26
    invoke-virtual {v15}, Ljava8/util/concurrent/ForkJoinTask;->quietlyComplete()V

    goto :goto_e

    :cond_14
    const/4 v3, 0x4

    .line 27
    invoke-virtual {v0}, Ljava8/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v4

    and-int v5, v4, v2

    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_15

    move-object v15, v0

    goto :goto_b

    :cond_15
    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1b

    .line 28
    iget-object v5, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    if-eqz v5, :cond_17

    iget-object v6, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    if-eqz v6, :cond_17

    .line 29
    iget-wide v7, v5, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 30
    iget v5, v6, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    if-ne v5, v14, :cond_16

    goto :goto_c

    :cond_16
    iget-wide v5, v6, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 31
    invoke-interface {v9, v7, v8, v5, v6}, Ljava8/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v7

    :goto_c
    iput-wide v7, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    :cond_17
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_18

    .line 32
    iget v5, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    if-ne v5, v13, :cond_18

    move v5, v1

    goto :goto_d

    :cond_18
    const/4 v5, 0x0

    :goto_d
    or-int v6, v4, v2

    or-int/2addr v6, v5

    if-eq v6, v4, :cond_19

    .line 33
    invoke-virtual {v0, v4, v6}, Ljava8/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_19
    if-eqz v5, :cond_1a

    .line 34
    invoke-virtual {v0}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    :cond_1a
    move-object v15, v0

    const/4 v2, 0x2

    goto :goto_b

    :cond_1b
    or-int v5, v4, v2

    .line 35
    invoke-virtual {v0, v4, v5}, Ljava8/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_1c
    :goto_e
    return-void

    :cond_1d
    const/4 v0, 0x0

    .line 36
    throw v0
.end method

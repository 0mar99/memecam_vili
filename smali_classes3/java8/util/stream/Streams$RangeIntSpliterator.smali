.class public final Ljava8/util/stream/Streams$RangeIntSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava8/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RangeIntSpliterator"
.end annotation


# static fields
.field public static final BALANCED_SPLIT_THRESHOLD:I = 0x1000000

.field public static final RIGHT_BALANCED_SPLIT_RATIO:I = 0x8


# instance fields
.field public from:I

.field public last:I

.field public final upTo:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 4
    iput p2, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->upTo:I

    .line 5
    iput p3, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->last:I

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/Streams$RangeIntSpliterator;-><init>(III)V

    return-void
.end method

.method private splitPoint(J)I
    .locals 2

    const-wide/32 v0, 0x1000000

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    int-to-long v0, p0

    .line 1
    div-long/2addr p1, v0

    long-to-int p0, p1

    return p0
.end method


# virtual methods
.method public characteristics()I
    .locals 0

    const/16 p0, 0x4555

    return p0
.end method

.method public estimateSize()J
    .locals 4

    .line 1
    iget v0, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->upTo:I

    int-to-long v0, v0

    iget v2, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->from:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget p0, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->last:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Streams$RangeIntSpliterator;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfInt;->forEachRemaining(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/IntConsumer;)V
    .locals 4

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 4
    iget v1, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->upTo:I

    .line 5
    iget v2, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->last:I

    .line 6
    iput v1, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->from:I

    const/4 v3, 0x0

    .line 7
    iput v3, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->last:I

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 p0, v0, 0x1

    .line 8
    invoke-interface {p1, v0}, Ljava8/util/function/IntConsumer;->accept(I)V

    move v0, p0

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    .line 9
    invoke-interface {p1, v0}, Ljava8/util/function/IntConsumer;->accept(I)V

    :cond_1
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 1
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Streams$RangeIntSpliterator;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result p0

    return p0
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 10
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfInt;->tryAdvance(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public tryAdvance(Ljava8/util/function/IntConsumer;)Z
    .locals 4

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 4
    iget v1, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->upTo:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 5
    iput v1, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 6
    invoke-interface {p1, v0}, Ljava8/util/function/IntConsumer;->accept(I)V

    return v2

    .line 7
    :cond_0
    iget v1, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->last:I

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 8
    iput v3, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->last:I

    .line 9
    invoke-interface {p1, v0}, Ljava8/util/function/IntConsumer;->accept(I)V

    return v2

    :cond_1
    return v3
.end method

.method public trySplit()Ljava8/util/Spliterator$OfInt;
    .locals 4

    .line 3
    invoke-virtual {p0}, Ljava8/util/stream/Streams$RangeIntSpliterator;->estimateSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Ljava8/util/stream/Streams$RangeIntSpliterator;

    iget v3, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 5
    invoke-direct {p0, v0, v1}, Ljava8/util/stream/Streams$RangeIntSpliterator;->splitPoint(J)I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->from:I

    const/4 p0, 0x0

    invoke-direct {v2, v3, v0, p0}, Ljava8/util/stream/Streams$RangeIntSpliterator;-><init>(III)V

    move-object p0, v2

    :goto_0
    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/Streams$RangeIntSpliterator;->trySplit()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 0

    .line 2
    invoke-virtual {p0}, Ljava8/util/stream/Streams$RangeIntSpliterator;->trySplit()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

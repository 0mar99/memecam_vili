.class public final Lokio/Pipe;
.super Ljava/lang/Object;
.source "Pipe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Pipe$PipeSource;,
        Lokio/Pipe$PipeSink;
    }
.end annotation


# instance fields
.field public final buffer:Lokio/Buffer;

.field public foldedSink:Lokio/Sink;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final maxBufferSize:J

.field public final sink:Lokio/Sink;

.field public sinkClosed:Z

.field public final source:Lokio/Source;

.field public sourceClosed:Z


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    .line 3
    new-instance v0, Lokio/Pipe$PipeSink;

    invoke-direct {v0, p0}, Lokio/Pipe$PipeSink;-><init>(Lokio/Pipe;)V

    iput-object v0, p0, Lokio/Pipe;->sink:Lokio/Sink;

    .line 4
    new-instance v0, Lokio/Pipe$PipeSource;

    invoke-direct {v0, p0}, Lokio/Pipe$PipeSource;-><init>(Lokio/Pipe;)V

    iput-object v0, p0, Lokio/Pipe;->source:Lokio/Source;

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 5
    iput-wide p1, p0, Lokio/Pipe;->maxBufferSize:J

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxBufferSize < 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$000(Lokio/Pipe;)Lokio/Sink;
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    return-object p0
.end method


# virtual methods
.method public fold(Lokio/Sink;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    if-nez v1, :cond_2

    .line 3
    iget-object v1, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->exhausted()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    iput-boolean v2, p0, Lokio/Pipe;->sourceClosed:Z

    .line 5
    iput-object p1, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    iget-boolean v1, p0, Lokio/Pipe;->sinkClosed:Z

    .line 8
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 9
    iget-object v4, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    iget-object v5, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    iget-wide v5, v5, Lokio/Buffer;->size:J

    invoke-virtual {v3, v4, v5, v6}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 10
    iget-object v4, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    :try_start_1
    iget-wide v4, v3, Lokio/Buffer;->size:J

    invoke-interface {p1, v3, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V

    if-eqz v1, :cond_1

    .line 13
    invoke-interface {p1}, Lokio/Sink;->close()V

    goto :goto_0

    .line 14
    :cond_1
    invoke-interface {p1}, Lokio/Sink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    iget-object v1, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v1

    .line 16
    :try_start_2
    iput-boolean v2, p0, Lokio/Pipe;->sourceClosed:Z

    .line 17
    iget-object p0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 18
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 19
    :cond_2
    :try_start_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "sink already folded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_2
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final sink()Lokio/Sink;
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/Pipe;->sink:Lokio/Sink;

    return-object p0
.end method

.method public final source()Lokio/Source;
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/Pipe;->source:Lokio/Source;

    return-object p0
.end method

.class public Lcom/opay/face/phoneface/model/FaceProcess;
.super Ljava/lang/Object;
.source "FaceProcess.java"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# instance fields
.field private frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/FaceFrame;",
            ">;"
        }
    .end annotation
.end field

.field private strike_count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/opay/face/phoneface/model/FaceProcess;->frames:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public addFrame(I[I[ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/FaceProcess;->frames:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/opay/face/phoneface/model/FaceProcess;->frames:Ljava/util/List;

    .line 10
    .line 11
    new-instance v1, Lcom/opay/face/phoneface/model/FaceFrame;

    .line 12
    .line 13
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/opay/face/phoneface/model/FaceFrame;-><init>(I[I[ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/opay/face/phoneface/model/FaceProcess;->frames:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/opay/face/phoneface/model/FaceFrame;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/opay/face/phoneface/model/FaceFrame;->getFace_num()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eq v0, p1, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/opay/face/phoneface/model/FaceProcess;->frames:Ljava/util/List;

    .line 41
    .line 42
    new-instance v1, Lcom/opay/face/phoneface/model/FaceFrame;

    .line 43
    .line 44
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/opay/face/phoneface/model/FaceFrame;-><init>(I[I[ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/opay/face/phoneface/model/FaceProcess;->addStrike_count()V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method public addStrike_count()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/model/FaceProcess;->strike_count:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/opay/face/phoneface/model/FaceProcess;->strike_count:I

    .line 6
    .line 7
    return-void
.end method

.method public getFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/FaceFrame;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/FaceProcess;->frames:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStrike_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/model/FaceProcess;->strike_count:I

    .line 2
    .line 3
    return v0
.end method

.method public setFrames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/FaceFrame;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/FaceProcess;->frames:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setStrike_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/model/FaceProcess;->strike_count:I

    .line 2
    .line 3
    return-void
.end method

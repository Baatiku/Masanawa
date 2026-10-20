.class public Lcom/opay/face/Cat;
.super Ljava/lang/Object;
.source "Cat.java"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# instance fields
.field private data:Ljava/lang/String;

.field private fp:Ljava/lang/String;

.field private mark:Ljava/lang/String;

.field private pkv:I

.field private sg:Ljava/lang/String;

.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/Cat;->data:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/Cat;->fp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMark()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/Cat;->mark:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPkv()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/Cat;->pkv:I

    .line 2
    .line 3
    return v0
.end method

.method public getSg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/Cat;->sg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/Cat;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/Cat;->data:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/Cat;->fp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMark(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/Cat;->mark:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPkv(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/Cat;->pkv:I

    .line 2
    .line 3
    return-void
.end method

.method public setSg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/Cat;->sg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/Cat;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Cat{data="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/opay/face/Cat;->data:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "null"

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    move-object v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v3, 0x0

    .line 20
    const/16 v4, 0x40

    .line 21
    .line 22
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ", mark="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/opay/face/Cat;->mark:Ljava/lang/String;

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    move-object v1, v2

    .line 39
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ", sg="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/opay/face/Cat;->sg:Ljava/lang/String;

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move-object v2, v1

    .line 53
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", fp="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/opay/face/Cat;->fp:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", ver="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/opay/face/Cat;->ver:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", pkv="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v1, p0, Lcom/opay/face/Cat;->pkv:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const/16 v1, 0x7d

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0
.end method

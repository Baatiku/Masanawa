.class public Lteam/opay/library/service/task/OScheduler$d;
.super Ljava/lang/Object;
.source "OScheduler.java"

# interfaces
.implements Lteam/opay/library/service/task/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/library/service/task/OScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Lyfe;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/library/service/task/OScheduler$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lteam/opay/library/service/task/OScheduler$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    invoke-static {}, Lteam/opay/library/service/task/OScheduler;->f()Lcfa;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "Task execute completed. "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lteam/opay/library/service/task/OScheduler$d;->a:Lyfe;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "OScheduler"

    .line 25
    .line 26
    invoke-interface {v0, v2, v1}, Lcfa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lteam/opay/library/service/task/OScheduler$d;->a:Lyfe;

    .line 30
    .line 31
    invoke-virtual {v0}, Lyfe;->a()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-static {}, Lteam/opay/library/service/task/OScheduler;->f()Lcfa;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "Task can\'t loop. "

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lteam/opay/library/service/task/OScheduler$d;->a:Lyfe;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v0, v2, v1}, Lcfa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lteam/opay/library/service/task/OScheduler$d;->a:Lyfe;

    .line 65
    .line 66
    invoke-static {v0}, Lteam/opay/library/service/task/OScheduler;->b(Lyfe;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public b(Lyfe;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/library/service/task/OScheduler$d;->a:Lyfe;

    .line 2
    .line 3
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/library/service/task/OScheduler$d;->a:Lyfe;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyfe;->b()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lteam/opay/library/service/task/OScheduler;->f()Lcfa;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "Task execute error. "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lteam/opay/library/service/task/OScheduler$d;->a:Lyfe;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "OScheduler"

    .line 30
    .line 31
    invoke-interface {v0, v2, v1, p1}, Lcfa;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

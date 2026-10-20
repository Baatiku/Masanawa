.class public Lteam/opay/business/guideview/GuideBuilder;
.super Ljava/lang/Object;
.source "GuideBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/guideview/GuideBuilder$b;,
        Lteam/opay/business/guideview/GuideBuilder$a;,
        Lteam/opay/business/guideview/GuideBuilder$SlideState;
    }
.end annotation


# instance fields
.field public a:Lteam/opay/business/guideview/Configuration;

.field public b:Z

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/business/guideview/b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lteam/opay/business/guideview/GuideBuilder$b;


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
    iput-object v0, p0, Lteam/opay/business/guideview/GuideBuilder;->c:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/business/guideview/Configuration;

    .line 12
    .line 13
    invoke-direct {v0}, Lteam/opay/business/guideview/Configuration;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lteam/opay/business/guideview/GuideBuilder;->a:Lteam/opay/business/guideview/Configuration;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Lteam/opay/business/guideview/b;)Lteam/opay/business/guideview/GuideBuilder;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/business/guideview/GuideBuilder;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p1, Lteam/opay/business/guideview/BuildException;

    .line 12
    .line 13
    const-string v0, "Already created, rebuild a new one."

    .line 14
    .line 15
    invoke-direct {p1, v0}, Lteam/opay/business/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public b()Lteam/opay/business/guideview/c;
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/business/guideview/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/business/guideview/c;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/business/guideview/GuideBuilder;->c:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    new-array v1, v1, [Lteam/opay/business/guideview/b;

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/business/guideview/GuideBuilder;->c:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, [Lteam/opay/business/guideview/b;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lteam/opay/business/guideview/c;->i([Lteam/opay/business/guideview/b;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lteam/opay/business/guideview/GuideBuilder;->a:Lteam/opay/business/guideview/Configuration;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lteam/opay/business/guideview/c;->j(Lteam/opay/business/guideview/Configuration;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lteam/opay/business/guideview/GuideBuilder;->d:Lteam/opay/business/guideview/GuideBuilder$b;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lteam/opay/business/guideview/c;->h(Lteam/opay/business/guideview/GuideBuilder$b;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lteam/opay/business/guideview/c;->k(Lteam/opay/business/guideview/GuideBuilder$a;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lteam/opay/business/guideview/GuideBuilder;->c:Ljava/util/List;

    .line 40
    .line 41
    iput-object v1, p0, Lteam/opay/business/guideview/GuideBuilder;->a:Lteam/opay/business/guideview/Configuration;

    .line 42
    .line 43
    iput-object v1, p0, Lteam/opay/business/guideview/GuideBuilder;->d:Lteam/opay/business/guideview/GuideBuilder$b;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Lteam/opay/business/guideview/GuideBuilder;->b:Z

    .line 47
    .line 48
    return-object v0
.end method

.method public c(I)Lteam/opay/business/guideview/GuideBuilder;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xff

    .line 8
    .line 9
    if-le p1, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :cond_1
    iget-object v0, p0, Lteam/opay/business/guideview/GuideBuilder;->a:Lteam/opay/business/guideview/Configuration;

    .line 13
    .line 14
    iput p1, v0, Lteam/opay/business/guideview/Configuration;->mAlpha:I

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_2
    new-instance p1, Lteam/opay/business/guideview/BuildException;

    .line 18
    .line 19
    const-string v0, "Already created. rebuild a new one."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lteam/opay/business/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public d(Z)Lteam/opay/business/guideview/GuideBuilder;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/business/guideview/GuideBuilder;->a:Lteam/opay/business/guideview/Configuration;

    .line 6
    .line 7
    iput-boolean p1, v0, Lteam/opay/business/guideview/Configuration;->mAutoDismiss:Z

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Lteam/opay/business/guideview/BuildException;

    .line 11
    .line 12
    const-string v0, "Already created, rebuild a new one."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lteam/opay/business/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public e(I)Lteam/opay/business/guideview/GuideBuilder;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/business/guideview/GuideBuilder;->a:Lteam/opay/business/guideview/Configuration;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lteam/opay/business/guideview/Configuration;->mCorner:I

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lteam/opay/business/guideview/GuideBuilder;->a:Lteam/opay/business/guideview/Configuration;

    .line 13
    .line 14
    iput p1, v0, Lteam/opay/business/guideview/Configuration;->mCorner:I

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    new-instance p1, Lteam/opay/business/guideview/BuildException;

    .line 18
    .line 19
    const-string v0, "Already created. rebuild a new one."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lteam/opay/business/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public f(I)Lteam/opay/business/guideview/GuideBuilder;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/business/guideview/GuideBuilder;->a:Lteam/opay/business/guideview/Configuration;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lteam/opay/business/guideview/Configuration;->mPadding:I

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lteam/opay/business/guideview/GuideBuilder;->a:Lteam/opay/business/guideview/Configuration;

    .line 13
    .line 14
    iput p1, v0, Lteam/opay/business/guideview/Configuration;->mPadding:I

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    new-instance p1, Lteam/opay/business/guideview/BuildException;

    .line 18
    .line 19
    const-string v0, "Already created. rebuild a new one."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lteam/opay/business/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public g(I)Lteam/opay/business/guideview/GuideBuilder;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/business/guideview/GuideBuilder;->a:Lteam/opay/business/guideview/Configuration;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lteam/opay/business/guideview/Configuration;->mPaddingBottom:I

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lteam/opay/business/guideview/GuideBuilder;->a:Lteam/opay/business/guideview/Configuration;

    .line 13
    .line 14
    iput p1, v0, Lteam/opay/business/guideview/Configuration;->mPaddingBottom:I

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    new-instance p1, Lteam/opay/business/guideview/BuildException;

    .line 18
    .line 19
    const-string v0, "Already created. rebuild a new one."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lteam/opay/business/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public h(I)Lteam/opay/business/guideview/GuideBuilder;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/business/guideview/GuideBuilder;->a:Lteam/opay/business/guideview/Configuration;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lteam/opay/business/guideview/Configuration;->mPaddingLeft:I

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lteam/opay/business/guideview/GuideBuilder;->a:Lteam/opay/business/guideview/Configuration;

    .line 13
    .line 14
    iput p1, v0, Lteam/opay/business/guideview/Configuration;->mPaddingLeft:I

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    new-instance p1, Lteam/opay/business/guideview/BuildException;

    .line 18
    .line 19
    const-string v0, "Already created. rebuild a new one."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lteam/opay/business/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public i(I)Lteam/opay/business/guideview/GuideBuilder;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/business/guideview/GuideBuilder;->a:Lteam/opay/business/guideview/Configuration;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lteam/opay/business/guideview/Configuration;->mPaddingRight:I

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lteam/opay/business/guideview/GuideBuilder;->a:Lteam/opay/business/guideview/Configuration;

    .line 13
    .line 14
    iput p1, v0, Lteam/opay/business/guideview/Configuration;->mPaddingRight:I

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    new-instance p1, Lteam/opay/business/guideview/BuildException;

    .line 18
    .line 19
    const-string v0, "Already created. rebuild a new one."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lteam/opay/business/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public j(I)Lteam/opay/business/guideview/GuideBuilder;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/business/guideview/GuideBuilder;->a:Lteam/opay/business/guideview/Configuration;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lteam/opay/business/guideview/Configuration;->mPaddingTop:I

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lteam/opay/business/guideview/GuideBuilder;->a:Lteam/opay/business/guideview/Configuration;

    .line 13
    .line 14
    iput p1, v0, Lteam/opay/business/guideview/Configuration;->mPaddingTop:I

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    new-instance p1, Lteam/opay/business/guideview/BuildException;

    .line 18
    .line 19
    const-string v0, "Already created. rebuild a new one."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lteam/opay/business/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public k(Lteam/opay/business/guideview/GuideBuilder$b;)Lteam/opay/business/guideview/GuideBuilder;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lteam/opay/business/guideview/GuideBuilder;->d:Lteam/opay/business/guideview/GuideBuilder$b;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p1, Lteam/opay/business/guideview/BuildException;

    .line 9
    .line 10
    const-string v0, "Already created, rebuild a new one."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Lteam/opay/business/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public l(Landroid/view/View;)Lteam/opay/business/guideview/GuideBuilder;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/guideview/GuideBuilder;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/business/guideview/GuideBuilder;->a:Lteam/opay/business/guideview/Configuration;

    .line 6
    .line 7
    iput-object p1, v0, Lteam/opay/business/guideview/Configuration;->mTargetView:Landroid/view/View;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Lteam/opay/business/guideview/BuildException;

    .line 11
    .line 12
    const-string v0, "Already created. rebuild a new one."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lteam/opay/business/guideview/BuildException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

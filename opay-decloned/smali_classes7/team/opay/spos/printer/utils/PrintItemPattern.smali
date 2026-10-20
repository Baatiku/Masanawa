.class public Lteam/opay/spos/printer/utils/PrintItemPattern;
.super Ljava/lang/Object;
.source "PrintItemPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Landroid/graphics/Bitmap;

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern;->e:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern;->g:Z

    .line 6
    invoke-static {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->a(Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern;->a:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->b(Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern;->b:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->c(Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;)I

    move-result v0

    iput v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern;->c:I

    .line 9
    invoke-static {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->d(Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern;->d:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->e(Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern;->e:Landroid/graphics/Bitmap;

    .line 11
    invoke-static {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->f(Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;)I

    move-result v0

    iput v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern;->f:I

    .line 12
    invoke-static {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->g(Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lteam/opay/spos/printer/utils/PrintItemPattern;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;Lteam/opay/spos/printer/utils/PrintItemPattern$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/spos/printer/utils/PrintItemPattern;-><init>(Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern;->e:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern;->g:Z

    .line 2
    .line 3
    return v0
.end method
